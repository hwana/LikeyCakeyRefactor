package com.dal.likeycakey.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.member.model.vo.Member;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	// member insert 할 수 있는 DAO
	@Override
	public int insertMember(Member m) throws Exception{
		System.out.println("일반 회원가입");
		int result = sqlSession.insert("Member.insertMember", m);
		return result;
	}
	
	// member idcheck 할 수 있는 DAO
	public int selectMember(String id) {
		return sqlSession.selectOne("Member.idCheck", id);
	}
	
	// member update 할 수 있는 DAO
	@Override
	public int updateMember(Member m) throws Exception{
		return sqlSession.insert("Member.updateMember", m);
	}
	
	// member delete 할 수 있는 DAO
	@Override
	public int deleteMember(String id) throws Exception{
		return sqlSession.delete("Member.deleteMember", id);
	}
	
	
	// member를 select 할 수 있는 DAO
	@Override
	public Member selectMember(String id, String passwd) {
		return (Member)sqlSession.selectOne("Member.selectOne", new Member(id, passwd));
	}
}
