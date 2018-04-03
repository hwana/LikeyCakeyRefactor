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
	public Member loginMember(String id, String passwd) throws Exception {
		return memberDao.selectMember(id, passwd);
	}
	
	// ID CHECK
	@Override
	public int idCheck(String id) {
		return memberDao.selectMember(id);
	}
	
	// member 삽입
	@Override
	public int insertMember (Member m) throws Exception {
		return memberDao.insertMember(m);
	}
	


}
