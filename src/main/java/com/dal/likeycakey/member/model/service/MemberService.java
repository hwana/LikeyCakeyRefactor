package com.dal.likeycakey.member.model.service;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberService {
	public int insertMember(Member m) throws Exception;
	public int idCheck(String id);
	public Member forLogin(String id, String passwd) throws Exception;
	public Member findId(String email, String name) throws Exception;
	public int mdupid(String id);
	public int updateMember(Member m) throws Exception;
	public void updatePassword(Member m)throws Exception;
}
