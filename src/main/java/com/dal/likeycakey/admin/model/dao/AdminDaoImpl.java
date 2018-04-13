package com.dal.likeycakey.admin.model.dao;

import java.util.ArrayList;



import org.apache.ibatis.session.RowBounds;
import com.dal.likeycakey.admin.model.dao.AdminDao;
import com.dal.likeycakey.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() throws Exception{
		System.out.println("adminDao.getListCount 도착");
		return sqlSession.selectOne("AdminMapper.getListCount");
		
	}

	@Override
	public ArrayList<Member> selectList(int currentPage, int limit) throws Exception{
		System.out.println("adminDao.selectList 도착");
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<Member>(sqlSession.selectList("AdminMapper.selectList", null, rows));
	}
	
	@Override
	public Member selectOne(String id) throws Exception{
		System.out.println("adminDao.selectOne 도착");
		return (Member)(sqlSession.selectOne("AdminMapper.selectOne", id));
	}
	
	@Override
	public int updateMember(Member m) throws Exception{
		return sqlSession.update("AdminMapper.updateMember",m);		
		
	}
	
	@Override
	public int deleteMember(String id) throws Exception{
		
		return sqlSession.delete("AdminMapper.deleteMember",id);
	}

	@Override
	public int deleteTotalMember() throws Exception{
		// TODO Auto-generated method stub
		return sqlSession.delete("AdminMapper.deleteTotalMember");
	}
	

}