package kr.co.dong.project;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectDAOImpl implements ProjectDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String nameSpace="kr.co.dong.projectMapper";

	@Override
	public int totalRecord1() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".totalRecord");
	}

	@Override
	public List<InventoryVO> listInventory() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".findAll");
	}

	@Override
	public List<ProductVO> productSearch(String keyword) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".productSearch", keyword);
	}

	@Override
	public ProductVO productDetail(String product_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".productDetail", product_id);
	}

	@Override
	public List<BuyVO> mypage(String userid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".mypage", userid);
	}

	@Override
	public List<BuyDetailVO> mypageDetail(int[] buyno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".mypageDetail", buyno);
	}

	@Override
	public List<ProductVO> mypageDetailProduct(String[] productno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".mypageDetailProduct", productno);
	}

	@Override
	public List<AddressVO> addressManageSelect1(String userid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".addressManageSelect1", userid);
	}

	@Override
	public AddressVO addressManageUpdate1(int address_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".addressManageUpdate1", address_no);
	}

	@Override
	public int addressManageUpdate2(AddressVO addressVO) {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".addressManageUpdate2", addressVO);
	}

	@Override
	public int addressManageAdd2(AddressVO addressVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + ".addressManageAdd2", addressVO);
	}

	@Override
	public int addressManageDelete1(int address_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(nameSpace + ".addressManageDelete1", address_no);
	}

	@Override
	public int addressManageMainReset() {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".addressManageMainReset");
	}
	
	@Override
	public int productRegister(ProductVO productVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + ".productRegister", productVO);
	}

	@Override
	public int fileUpload(FileVO fileVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + ".fileUpload", fileVO);
	}

	@Override
	public List<String> fileSelect(String product_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".fileSelect", product_id);
	}

	@Override
	public List<FileVO> listFileSelect(String[] productno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".listFileSelect", productno);
	}
	
	// 리뷰 작성 처리
	@Override
	public int review(BoardsDTO boardsDTO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace+".review",boardsDTO);
	}

	@Override
	public int boardsNoLast() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".boardsNoLast");
	}

	@Override
	public List<ProductVO> categorySearch(Map<String, Object> codeMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".categorySearch", codeMap);
	}

	@Override
	public List<ProductVO> orderSearch(Map<String, Object> codeMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".orderSearch", codeMap);
	}

	@Override
	public List<ProductVO> homeList(Map<String, Object> codeMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".homeList", codeMap);
	}

}
