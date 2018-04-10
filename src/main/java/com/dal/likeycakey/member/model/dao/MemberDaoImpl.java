package com.dal.likeycakey.member.model.dao;

import java.util.List;

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
	
	// id 찾기
	@Override
	public String findId(Member m) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("아이디 찾기 dao 진입");
		return sqlSession.selectOne("Member.findId" , m);
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
	
	
	// 로그인 할 수 있는 DAO
	@Override
	public Member forLogin(String id, String passwd) throws Exception {
		System.out.println("일반회원 로그인");
		return sqlSession.selectOne("Member.loginCheck", new Member(id, passwd));
	}
}
