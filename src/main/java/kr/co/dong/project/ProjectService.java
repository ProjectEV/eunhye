package kr.co.dong.project;

import java.util.List;

public interface ProjectService {

	public int totalRecord1();

	public List<InventoryVO> listInventory();
	
	//검색
	public List<ProductVO> productSearch(String keyword);
	
	//제품 상세페이지
	public ProductVO productDetail(String product_id);


}
