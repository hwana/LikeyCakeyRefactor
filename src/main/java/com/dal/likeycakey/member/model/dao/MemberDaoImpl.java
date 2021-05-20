package com.dal.likeycakey.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.qna.model.vo.Homeqna;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// member insert 할 수 있는 DAO
	@Override
	public int insertMember(Member m) throws Exception {
		int result = sqlSession.insert("Member.insertMember", m);
		return result;
	}

	// id 찾기
	@Override
	public Member findId(String email, String name) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.findId", new Member(email, name));
	}

	// member idcheck 할 수 있는 DAO
	@Override
	public int selectMember(String id) {
		return sqlSession.selectOne("Member.dupid", id);
	}

	// member update 할 수 있는 DAO
	@Override
	public int updateMember(Member m) throws Exception {
		return sqlSession.update("Member.updateMember", m);
	}

	// member delete 할 수 있는 DAO
	@Override
	public int deleteMember(String id) throws Exception {
		return sqlSession.delete("Member.deleteMember", id);
	}

	// 로그인 할 수 있는 DAO
	@Override
	public Member forLogin(String id, String passwd) throws Exception {
		return sqlSession.selectOne("Member.loginCheck", new Member(id, passwd));
	}

	// 비밀번호를 수정할 수 있는 DAO
	@Override
	public int updatePassword(Member m) throws Exception {
		return sqlSession.update("Member.updatePassword", m);
	}

	// 게시글 리스트 불러오기
	@Override
	public ArrayList<Homeqna> homeqlist(Member m) throws Exception {
		return new ArrayList<Homeqna>(sqlSession.selectList("homeqna.m_listAll", m));
	}

	
	@Override
	public Member selectMemberInfo(String id) {
		return sqlSession.selectOne("Member.selectMemberInfo", id);
	}

	@Override
	public List<Member> findId(Member m) {
		return null;
	}

}
