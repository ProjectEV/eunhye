package kr.co.dong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.dong.project.AddressVO;
import kr.co.dong.project.BuyDetailVO;
import kr.co.dong.project.BuyVO;
import kr.co.dong.project.ProductVO;
import kr.co.dong.project.ProjectService;

@Controller
public class ProjectController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Inject
	ProjectService projectService;
	
	@RequestMapping(value="project/product_register", method= RequestMethod.GET)
	public String productRegister() {
		logger.info("관리자 글 작성 이동");
		return "admin_post2";
	}
	
	
	// 신규 product 등록
	@RequestMapping(value="project/product_register", method= RequestMethod.POST) 
	public String productRegister(ProductVO productVO, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		request.setCharacterEncoding("UTF-8");
		logger.info("내용" + productVO);

		int r = projectService.productRegister(productVO);
		
		if(r>0) {
			rttr.addFlashAttribute("msg","추가에 성공하였습니다.");	//세션저장
			}
		return "redirect:inventory";
	}
	
	
	
	
	
	
	//제품 목록 검색
	@RequestMapping(value="product/list", method=RequestMethod.GET)
	public String ProductSearch(@RequestParam("keyword") String keyword, HttpServletRequest request, Model model) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		//검색어 가지고 리스트 검색
		List<ProductVO> list = projectService.productSearch(keyword);
		model.addAttribute("list", list);
		
		return "product_list";
	}
	
	//제품 상세페이지
	@RequestMapping(value="product/detail", method=RequestMethod.GET)
	public String ProductDetail(@RequestParam("product_id") String product_id, Model model) {
		ProductVO vo = projectService.productDetail(product_id);
		model.addAttribute("product", vo);
		
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


}
