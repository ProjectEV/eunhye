package kr.co.dong.project;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public interface ProjectDAO {

	public int totalRecord1();

	public List<InventoryVO> listInventory();
	
	//홈 제품 목록
	public List<ProductVO> homeList(Map<String, Object> codeMap);
	
	//검색
	public List<ProductVO> productSearch(String keyword);
	
	//카테고리 검색 
	public List<ProductVO> categorySearch(Map<String, Object> codeMap);
	
	//정렬 검색 
	public List<ProductVO> orderSearch(Map<String, Object> codeMap);
	
	//제품 상세페이지
	public ProductVO productDetail(String product_id);

	//마이페이지 buy 테이블 조회
	public List<BuyVO> mypage(String userid);
	
	//마이페이지 buyDetail 테이블 조회
	public List<BuyDetailVO> mypageDetail(int[] buyno);
	
	//마이페이지 Product 테이블 조회
	public List<ProductVO> mypageDetailProduct(String[] productno);
	
	//위시리스트
	public List<ProductVO> wishlist(List<String> list);
	
	
	
	
	
	//주소지 관리 주소지 리스트 조회
	public List<AddressVO> addressManageSelect1 (String userid);
	
	//주소지 관리 주소지 수정(get)
	public AddressVO addressManageUpdate1(int address_no);
	
	//주소지 관리 주소지 수정(post)
	public int addressManageUpdate2(AddressVO addressVO);
	
	//주소지 관리 주소지 추가(post)
	public int addressManageAdd2(AddressVO addressVO);
	
	//주소지 관리 주소지 삭제(get)
	public int addressManageDelete1(int address_no);
	
	//메인 주소 리셋
	public int addressManageMainReset();
	
	
	
	
	
	//제품 등록
	public int productRegister(ProductVO productVO);
	
	//다중 이미지 저장
	public int fileUpload(FileVO fileVO);
	
	//다중 이미지 조회
	public List<String> fileSelect(String product_id);
	
	//제품 목록에서 대표 이미지 조회
	public List<FileVO> listFileSelect(String[] productno);
	
	//리뷰작성 처리
	public int review(BoardsDTO boardsDTO);
	
	//보드 테이블 마지막 튜플의 번호 조회
	public int boardsNoLast();


	
	//카테고리 조회
	public String selectCategory(Map<String, Object> codeMap);

}
