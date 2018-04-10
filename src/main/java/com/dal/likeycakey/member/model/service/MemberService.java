package com.dal.likeycakey.member.model.service;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberService {
	public int insertMember(Member m) throws Exception;
	public int idCheck(String id);
	public Member forLogin(String id, String passwd) throws Exception;
}
