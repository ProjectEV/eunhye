package kr.co.dong.controller;

import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.dong.project.AddressVO;
import kr.co.dong.project.BoardsDTO;
import kr.co.dong.project.BuyDetailVO;
import kr.co.dong.project.BuyVO;
import kr.co.dong.project.FileVO;
import kr.co.dong.project.ProductVO;
import kr.co.dong.project.ProjectService;

@Controller
public class ProjectController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Inject
	ProjectService projectService;
	
	//장바구니
	@RequestMapping(value="project/cart", method=RequestMethod.GET)
	public String cart() {
		return "cart";
	}
	
	@RequestMapping(value="project/product_register", method= RequestMethod.GET)
	public String productRegister() {
		logger.info("관리자 글 작성 이동");
		return "admin_post2";
	}
	
	@RequestMapping(value="project/product_register", method= RequestMethod.POST) 
	public String productRegister(ProductVO productVO,
		    @RequestParam("files") List<MultipartFile> files,     
		    HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		//다중 파일 저장
		String imagePath = "/C:\\uploads/";
		
		for (MultipartFile file : files) {
			String uuid = UUID.randomUUID().toString();
			String filename = uuid + "_" + file.getOriginalFilename();
			
			File dest = new File(imagePath + filename);
			
			file.transferTo(dest);
			
			FileVO fileVO = new FileVO();
			fileVO.setFile_name(filename);
			fileVO.setFile_path("/C:\\uploads/" + filename);
			fileVO.setFile_connection_id(productVO.getProduct_id());
			
			projectService.fileUpload(fileVO);
		}
		
		request.setCharacterEncoding("UTF-8");
		logger.info("내용" + productVO);

		int r = projectService.productRegister(productVO);
		
		if(r>0) {
			rttr.addFlashAttribute("msg","추가에 성공하였습니다.");	//세션저장
			}
		return "redirect:/";
	}
	
	//리뷰작성 처리
	@RequestMapping(value="product/review", method = RequestMethod.GET)
	public String review(@RequestParam("product_id") String product_id, Model model, HttpSession session) {
		logger.info("리뷰작성 화면");
		//session에 담겨있는 아이디 값 리뷰 데이터로 넘겨주기 위한 처리
//		Map r = (Map)session.getAttribute("user");
//		String user_id =(String)r.get("user_id");
		
		String user_id = "yoonho";
		model.addAttribute("user_id", user_id);
		
		ProductVO vo = projectService.productDetail(product_id);
		model.addAttribute("product", vo);
		
		List<String> file_name = projectService.fileSelect(product_id);
		
		//첫번째 사진만 가져옴
		model.addAttribute("file_name", file_name.get(0));
				
		return "review";
	}
		
	@RequestMapping(value="product/review", method = RequestMethod.POST)
	public String review(BoardsDTO boardsDTO, 
			@RequestParam("files") List<MultipartFile> files,
			HttpServletRequest request,RedirectAttributes rttr, HttpSession session,
		HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		logger.info("리뷰내용"+ boardsDTO);
		
		//보드 테이블의 마지막 튜플 번호 조회
		int boards_no_last = projectService.boardsNoLast();
		
		int r = projectService.review(boardsDTO);
		
		//다중 파일 저장
		String imagePath = "/C:\\uploads/";
		
		for (MultipartFile file : files) {
			String uuid = UUID.randomUUID().toString();
			String filename = uuid + "_" + file.getOriginalFilename();
			
			File dest = new File(imagePath + filename);
			file.transferTo(dest);
			
			FileVO fileVO = new FileVO();
			fileVO.setFile_name(filename);
			fileVO.setFile_path("/C:\\uploads/" + filename);
			fileVO.setFile_connection_id(Integer.toString(boards_no_last + 1));
			
			projectService.fileUpload(fileVO);
		}
				
		if(r>0) {
			rttr.addFlashAttribute("msg","완료");
		}
		return "home";
		
	}
	
	//조회된 제품의 이미지 조회
	public List<FileVO> listSelect(List<ProductVO> list) {

		//리스트에 뜬 제품 아이디 모두 조회
		String[] productno = new String[100];
		for(int i=0; i<list.size(); i++) {
			ProductVO productVO = list.get(i);
			productno[i] = productVO.getProduct_id();
		}
		
		//제품 이미지중 첫번째 이미지 조회
		List<FileVO> imageList = projectService.listFileSelect(productno);
		
		return imageList;
	}
	
	//키워드 검색
	@RequestMapping(value="product/list", method=RequestMethod.GET)
	public String ProductSearch(@RequestParam("keyword") String keyword, HttpServletRequest request, Model model) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		//검색어 가지고 리스트 검색
		List<ProductVO> list = projectService.productSearch(keyword);
		model.addAttribute("list", list);
		model.addAttribute("imageList", listSelect(list));
				
		return "product_list";
	}
	
	//카테고리 검색
	@RequestMapping(value="product/list/category", method=RequestMethod.GET)
	public String categorySearch(@RequestParam("category") int category, HttpServletRequest request, Model model) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		Map<String, Object> codeMap = new HashMap<>();
		codeMap.put("category", category);
				
		//카테고리 검색
		List<ProductVO> list = projectService.categorySearch(codeMap);
		model.addAttribute("list", list);
		model.addAttribute("imageList", listSelect(list));            
		
		return "product_list";
	}
		
	//정렬 검색
	@RequestMapping(value="product/list/order", method=RequestMethod.GET)
	public String orderSearch(@RequestParam("code") int code, HttpServletRequest request, Model model) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		Map<String, Object> codeMap = new HashMap<>();
		codeMap.put("code", code);
		
		//정렬 검색
		List<ProductVO> list = projectService.orderSearch(codeMap);
		model.addAttribute("list", list);
		model.addAttribute("imageList", listSelect(list));
		
		return "product_list";
	}
	
	//제품 상세페이지
	@RequestMapping(value="product/detail", method=RequestMethod.GET)
	public String ProductDetail(@RequestParam("product_id") String product_id, Model model) {
		
		//제품조회
		ProductVO vo = projectService.productDetail(product_id);
		model.addAttribute("product", vo);
		
		//카테고리 조회
		Map<String, Object> codeMap = new HashMap<>();
		codeMap.put("category", Integer.toString(vo.getProduct_category()));
		String category = projectService.selectCategory(codeMap);
		model.addAttribute("category", category);
		
		//제품의 모든 이미지 조회
		List<String> file_name = projectService.fileSelect(product_id);
		model.addAttribute("file_name", file_name);
		
		//상품평
		
		return "product_detail";
	}
	
	//마이페이지
	@RequestMapping(value="product/mypage", method=RequestMethod.GET)
	public String ProductMypage(Model model, HttpSession session) {
		//아이디 가져오기
//		Map<String, Object> user = (Map)session.getAttribute("user");
//        String userid = (String)user.get("user_id");
		String userid = "yoonho";
		
		//결제건 데이터 가져오기
		List<BuyVO> VO = projectService.mypage(userid);
		model.addAttribute("buy_list", VO);
		
		int[] buyno = new int[100];
		
		//결제건 데이터에서 buy_no 뽑기
		for(int i=0; i<VO.size(); i++) {
			BuyVO buyVO = VO.get(i);
			buyno[i] = buyVO.getBuy_no();
		}
			
		//결제상세건 데이터 가져오기
		List<BuyDetailVO> detailVO = projectService.mypageDetail(buyno);
		model.addAttribute("buy_detail_list", detailVO);
		
		String[] productno = new String[100];
		
		//결제상세건 데이터에서 buydetail_productid 뽑기
		for(int i=0; i<detailVO.size(); i++) {
			BuyDetailVO buyDetailVO = detailVO.get(i);
			productno[i] = buyDetailVO.getBuydetail_productid();
		}
		
		//결제상세건 데이터에서 제품 데이터 가져오기
		List<ProductVO> productVO = projectService.mypageDetailProduct(productno);
		model.addAttribute("buy_detail_product_list", productVO);
		model.addAttribute("imageList", listSelect(productVO));            


		return "mypage";
	}

	//주소지 관리 - 조회(get)
	@RequestMapping(value="product/address_manage", method=RequestMethod.GET)
	public String address_manage(HttpSession session, Model model) {
		//아이디 가져오기
//		String userid = session.getId();
		String userid = "yoonho";
		
		//주소지 리스트 조회
		List<AddressVO> addressList = projectService.addressManageSelect1(userid);
		model.addAttribute("list", addressList);
		
		return "address_manage";
	}
	
	//주소지 관리 - 조회(post, 저장버튼)
	@RequestMapping(value="product/address_manage", method=RequestMethod.POST)
	public String address_manage() {
		return "mypage";
	}
	
	//주소지 관리 - 수정(get)
	@RequestMapping(value="product/address_manage/update", method=RequestMethod.GET)
	public String address_manage_update(@RequestParam("address_no")int address_no, HttpSession session, Model model) {
		//수정을 위한 주소지 조회
		AddressVO addressVO = projectService.addressManageUpdate1(address_no);
		model.addAttribute("address", addressVO);
		
		return "address_update";
	}
	
	//주소지 관리 - 수정(post)
	@RequestMapping(value="product/address_manage/update", method=RequestMethod.POST)
	public String address_manage_update(AddressVO addressVO, Model model) {
		//메인주소 리셋
		int address_main = addressVO.getAddress_main();
		if(address_main == 1) { //들어오는 데이터가 메인 주소라면
			int result = projectService.addressManageMainReset();
		}		
		
		//주소지 리스트 수정 update
		int result = projectService.addressManageUpdate2(addressVO);
		return "redirect:/product/address_manage";
	}
	
	//주소지 관리 - 추가(get)
	@RequestMapping(value="product/address_manage/add", method=RequestMethod.GET)
	public String address_manage_update() {
		return "address_add";
	}
	
	//주소지 관리 - 추가(post)
	@RequestMapping(value="product/address_manage/add", method=RequestMethod.POST)
	public String address_manage_update(HttpSession session, AddressVO addressVO) {
		//아이디 가져오기
//		String userid = session.getId();
		String userid = "yoonho";
		
		addressVO.setAddress_userid(userid);
		
		//메인주소 리셋
		int address_main = addressVO.getAddress_main();
		if(address_main == 1) { //들어오는 데이터가 메인 주소라면
			int result = projectService.addressManageMainReset();
		}
		
		//주소지 리스트 추가
		int result = projectService.addressManageAdd2(addressVO);

		return "redirect:/product/address_manage";
	}
	
	//주소지 관리 - 삭제(get)
	@RequestMapping(value="product/address_manage/delete", method=RequestMethod.GET)
	public String address_manage_delete(@RequestParam("address_no")int address_no) {
		//주소지 리스트 삭제
		int result = projectService.addressManageDelete1(address_no);
		
		return "redirect:/product/address_manage";
	}
	
	//찜 목록
	@RequestMapping(value="product/wishlist", method=RequestMethod.GET)
	public String wishlist(@CookieValue(value = "wishlist", defaultValue = "") String wishlist,
            Model model) {

        
        if (wishlist.isEmpty()) {
            model.addAttribute("products", Collections.emptyList());
        } else {
            // 쿠키에서 제품 ID 목록 읽기
            List<String> product_ids = Arrays.asList(wishlist.split(","));
            
//    		String[] product_ids_list = new String[product_ids.size()];
//    		for(int i=0; i<product_ids.size(); i++) {
//    			product_ids_list[i] = product_ids.get(i);
//    		}

            // DB에서 제품 정보 조회
            List<ProductVO> products = projectService.wishlist(product_ids);
            model.addAttribute("products", products);
        }
		
//				// 1. 기존 쿠키에서 장바구니 데이터 가져오기
//			      String cartData = null;
//			      Cookie[] cookies = request.getCookies();
//			      if (cookies != null) {
//			         for (Cookie cookie : cookies) {
//			            if ("cart".equals(cookie.getName())) {
//			               cartData = cookie.getValue();
//			               break;
//			            }
//			         }
//			      }
//			      
//			      // 2. JSON으로 장바구니 데이터 파싱
//			      List<CartItemVO> cartItems = new ArrayList<>();
//			      ObjectMapper objectMapper = new ObjectMapper(); // JSON 처치 라이브러리
//			      String decodedCartData = null;
//			      
//			      if (cartData != null) {
//			         try {
//			            decodedCartData = URLDecoder.decode(cartData, "UTF-8");
//			            cartItems = objectMapper.readValue(decodedCartData, new TypeReference<List<CartItemVO>>() {});
//			         } catch (JsonProcessingException e) {
//			            e.printStackTrace();
//			         }
//			      }
//			      
//			      
//			      
//			      
//			      // 3. 새로운 항목 추가
//			      CartItemVO newItem = new CartItemVO();
//			      newItem.setPno(pno);
//			      newItem.setCartQuant(quantity);
//			      newItem.setCno(cno);
//			      
//			      // 기존 장바구니에 동일 상품이 있는지 확인
//			      boolean exists = false;
//			      for (CartItemVO item : cartItems) {
//			         if (item.getPno() == newItem.getPno()) {
//			            item.setCartQuant(item.getCartQuant() + quantity);
//			            exists = true;
//			            break;
//			         }
//			      }
//			      
//			      
//			      // 동일 상품이 없으면 추가
//			      if (exists == false) {
//			         cartItems.add(newItem);
//			      }
//			      
//			      
//			      
//			      // 4. 업데이트된 데이터를 쿠키에 저장
//			      try {
//			         String updatedCartData = objectMapper.writeValueAsString(cartItems);
//			         String encodedCartData = URLEncoder.encode(updatedCartData, "UTF-8");
//			         
//			         Cookie cartCookie = new Cookie("cart", encodedCartData);
//			         
//			         cartCookie.setPath("/"); // 쿠키의 유효 경로
//			         cartCookie.setMaxAge(7 * 24 * 60 * 60);
//			         response.addCookie(cartCookie);
//			      } catch (JsonProcessingException e) {
//			         e.printStackTrace(); // 직렬화 실패 시 로그
//			      }
//			      
//			   }
		
		
		return "wishlist";
	}

	//찜 추가
	@RequestMapping(value="product/wishlist/add", method=RequestMethod.POST)
	 public ResponseEntity<Void> wishlistAdd(@RequestParam("product_id") String product_id,
        HttpServletResponse response, @CookieValue(value = "wishlist", defaultValue = "") String wishlist) {
		
		// 쿠키에서 기존 찜 목록 가져오기
		Set<String> product_id_list = new HashSet<>(Arrays.asList(wishlist.split(",")));
		product_id_list.add(product_id); // 새로운 제품 추가
		
		// 쿠키에 저장 (CSV 형식)
		Cookie cookie = new Cookie("wishlist", String.join(",", product_id_list));
		cookie.setPath("/");
		cookie.setMaxAge(7 * 24 * 60 * 60); // 7일 유지
		response.addCookie(cookie);
		
		return ResponseEntity.ok().build();
	}



}