package kr.co.dong.project;

import java.util.List;

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

}
