package com.dal.likeycakey.biz.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.member.model.vo.Member;

@Repository("bizDao")
public class BizDaoImpl implements BizDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertBiz(Member m) throws Exception {
		int result = sqlSession.insert("Member.insertMember", m);
		return result;
	}

	@Override
	public int insertBiz(BizMember bm) throws Exception {
		int result2 = sqlSession.insert("bizMember.insertMember", bm);
		return result2;
	}

	@Override
	public int loginCheck(String id, String passwd) throws Exception {
		int result = sqlSession.selectOne("Member.loginCheck", new Member(id, passwd));
		return result;
	}



}
