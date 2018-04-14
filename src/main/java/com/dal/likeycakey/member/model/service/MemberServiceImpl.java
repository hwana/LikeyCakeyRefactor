package com.dal.likeycakey.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.member.model.dao.MemberDao;
import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.qna.model.vo.Homeqna;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;

	// 로그인하기위한 서비스
	@Override
	public Member forLogin(String id, String passwd) throws Exception {
		System.out.println("member type : normal");
		System.out.println("login : success");
		return memberDao.forLogin(id, passwd);
	}
	
	// ID CHECK
	@Override
	public int idCheck(String id) {
		return memberDao.selectMember(id);
	}
	
	@Override
	public int mdupid(String id) {
		return memberDao.selectMember(id);
	}
	
	// member 삽입
	@Override
	public int insertMember (Member m) throws Exception {
		int result = memberDao.insertMember(m);
		return result;
	}
	
	// update
	@Override
	public int updateMember(Member m) throws Exception {
		System.out.println("회원정보 업데이트 서비스");
		return memberDao.updateMember(m);
	}

	@Override
	public Member findId(String email, String name) throws Exception {
		System.out.println("아이디 찾기 service 진입");
		return memberDao.findId(email, name);
	}

	
	// 비밀번호 변경
	@Override
	public int updatePassword(Member m) throws Exception {
		System.out.println("패스워드 변경 서비스");
		return memberDao.updatePassword(m);
	}
	
	// 홈큐앤에이 리스트 출력
	@Override
	public ArrayList<Homeqna> homeqlist(Member m) throws Exception {
		System.out.println("WELCOME TO SERVICE HOME_QNA 리스트 출력");
		return memberDao.homeqlist(m);
	}
}