package com.dal.likeycakey.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.member.model.vo.Member;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertMember(Member m) throws Exception{
		int result = sqlSession.insert("Member.insertMember", m);
		return result;
	}

}
