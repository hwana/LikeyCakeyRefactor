package com.dal.likeycakey.biz.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.member.model.vo.Member;

@Repository("bizDao")
public class BizDaoImpl implements BizDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertBiz(Member member) throws Exception {
		int result = sqlSession.insert("Member.insertMember", member);
		return result;
	}
	
}
