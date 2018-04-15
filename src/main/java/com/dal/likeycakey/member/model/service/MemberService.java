package com.dal.likeycakey.member.model.service;

import java.util.ArrayList;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberService {
	public int insertMember(Member m) throws Exception;
	public int idCheck(String id);
	public Member forLogin(String id, String passwd) throws Exception;
	public String findId(Member m) throws Exception;
	// 멤버 정보 id로 불러오기
	public Member selectMemberInfo(String id);
	public Member findId(String email, String name) throws Exception;
	public int mdupid(String id);
}
