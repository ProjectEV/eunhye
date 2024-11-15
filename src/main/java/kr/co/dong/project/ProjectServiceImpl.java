package kr.co.dong.project;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Inject
	private ProjectDAO projectDAO;


	@Override
	public int totalRecord1() {
		// TODO Auto-generated method stub
		return projectDAO.totalRecord1();
	}

	@Override
	public List<InventoryVO> listInventory() {
		// TODO Auto-generated method stub
		return projectDAO.listInventory();
	}

	@Override
	public List<ProductVO> productSearch(String keyword) {
		// TODO Auto-generated method stub
		return projectDAO.productSearch(keyword);
	}

	@Override
	public ProductVO productDetail(String product_id) {
		// TODO Auto-generated method stub
		return projectDAO.productDetail(product_id);
	}

}
