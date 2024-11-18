package kr.co.dong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.dong.project.BuyDetailVO;
import kr.co.dong.project.BuyVO;
import kr.co.dong.project.ProductVO;
import kr.co.dong.project.ProjectService;

@Controller
public class ProjectController {
	
	@Inject
	ProjectService projectService;
	
	//제품 목록 검색
	@RequestMapping(value="product/list", method=RequestMethod.GET)
	public String ProductSearch(@RequestParam("keyword") String keyword, HttpServletRequest request, Model model) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		//검색어 가지고 리스트 검색
		List<ProductVO> list = projectService.productSearch(keyword);
		model.addAttribute("list", list);
		
		return "product";
	}
	
	//제품 상세페이지
	@RequestMapping(value="product/detail", method=RequestMethod.GET)
	public String ProductDetail(@RequestParam("product_id") String product_id, Model model) {
		ProductVO vo = projectService.productDetail(product_id);
		model.addAttribute("product", vo);
		
		//상품평
		
		return "product_detail";
	}
	
	
	//결제
	
	
	//주소지 선택
	
	
	//마이페이지
	@RequestMapping(value="product/mypage", method=RequestMethod.GET)
	public String ProductMypage(Model model, HttpSession session) {
		//아이디 가져오기
//		String userid = session.getId();
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



}
