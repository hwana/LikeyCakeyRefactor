package com.dal.likeycakey.member.model.dao;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberDao {
	public int insertMember(Member m) throws Exception;
	public int updateMember(Member m) throws Exception;
	public int deleteMember(String id) throws Exception;
	public Member selectMember(String id, String passwd);
	public int selectMember(String id);
}
