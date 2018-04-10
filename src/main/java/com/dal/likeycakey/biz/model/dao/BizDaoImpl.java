package com.dal.likeycakey.biz.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.member.model.vo.Member;

@Repository("bizDao")
public class BizDaoImpl implements BizDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertBiz1(Member m) throws Exception {
		System.out.println("here is DAO insertBiz1");
		int result = sqlSession.insert("Member.insertMember", m);
		return result;
	}
	
	@Override
	public int insertBiz2(BizMember bm) throws Exception {
		System.out.println("here is DAO insertBiz2");
		System.out.println(bm.getBizName());
		int result2 = sqlSession.insert("bizMember.insertMember", bm);
		return result2;
	}
	
	@Override

	public Member loginCheck(String id, String passwd) throws Exception {
		System.out.println("여기도착");
		
		System.out.println("DAO="+id);
		System.out.println("DAO="+passwd);
	
		return sqlSession.selectOne("Member.loginCheck", new Member(id, passwd));

	}
	
	@Override
	public int selectMember(String id) {
		return sqlSession.selectOne("Member.dupid", id);
	}
	
	@Override
	public int insertProductBoard(ProductBoard productBoard)  {
		System.out.println("bizDao의 insertProductBoard입니다");
		return sqlSession.insert("ProductBoard.insertProductBoard", productBoard);
	}
}
