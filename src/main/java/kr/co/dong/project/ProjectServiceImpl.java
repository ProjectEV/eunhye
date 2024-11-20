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

	@Override
	public List<BuyVO> mypage(String userid) {
		// TODO Auto-generated method stub
		return projectDAO.mypage(userid);
	}

	@Override
	public List<BuyDetailVO> mypageDetail(int[] buyno) {
		// TODO Auto-generated method stub
		return projectDAO.mypageDetail(buyno);
	}

	@Override
	public List<ProductVO> mypageDetailProduct(String[] productno) {
		// TODO Auto-generated method stub
		return projectDAO.mypageDetailProduct(productno);
	}

	@Override
	public List<AddressVO> addressManageSelect1(String userid) {
		// TODO Auto-generated method stub
		return projectDAO.addressManageSelect1(userid);
	}

	@Override
	public AddressVO addressManageUpdate1(int address_no) {
		// TODO Auto-generated method stub
		return projectDAO.addressManageUpdate1(address_no);
	}

	@Override
	public int addressManageUpdate2(AddressVO addressVO) {
		// TODO Auto-generated method stub
		return projectDAO.addressManageUpdate2(addressVO);
	}

	@Override
	public int addressManageAdd2(AddressVO addressVO) {
		// TODO Auto-generated method stub
		return projectDAO.addressManageAdd2(addressVO);
	}

	@Override
	public int addressManageDelete1(int address_no) {
		// TODO Auto-generated method stub
		return projectDAO.addressManageDelete1(address_no);
	}

}
