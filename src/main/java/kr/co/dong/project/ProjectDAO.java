package kr.co.dong.project;

import java.util.List;

public interface ProjectDAO {

	public int totalRecord1();

	public List<InventoryVO> listInventory();
	
	//검색
	public List<ProductVO> productSearch(String keyword);
	
	//제품 상세페이지
	public ProductVO productDetail(String product_id);

	//마이페이지 buy 테이블 조회
	public List<BuyVO> mypage(String userid);
	
	//마이페이지 buyDetail 테이블 조회
	public List<BuyDetailVO> mypageDetail(int[] buyno);
	
	//마이페이지 Product 테이블 조회
	public List<ProductVO> mypageDetailProduct(String[] productno);


}
