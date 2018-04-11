package com.dal.likeycakey.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.member.model.dao.MemberDao;
import com.dal.likeycakey.member.model.vo.Member;

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
	
	// member 삽입
	@Override
	public int insertMember (Member m) throws Exception {
		int result = memberDao.insertMember(m);
		return result;
	}

	
	@Override
	public String findId(Member m) throws Exception {
		System.out.println("아이디 찾기 service 진입");
		String findid = memberDao.findId(m);
		return findid;
	}

}
