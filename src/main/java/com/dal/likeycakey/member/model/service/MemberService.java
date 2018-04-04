package com.dal.likeycakey.member.model.service;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberService {
	public int insertMember(Member m) throws Exception;
	public Member loginMember(String id, String passwd) throws Exception;
	public int idCheck(String id);
}
