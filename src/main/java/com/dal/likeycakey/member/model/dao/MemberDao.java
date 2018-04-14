package com.dal.likeycakey.member.model.dao;
import com.dal.likeycakey.member.model.vo.Member;
public interface MemberDao {
	public int insertMember(Member m) throws Exception;
	public int updateMember(Member m) throws Exception;
	public int deleteMember(String id) throws Exception;
	public Member forLogin(String id, String passwd) throws Exception;
	public int selectMember(String id);
	public Member findId(String email, String name) throws Exception;
	public void updatePassword(Member m) throws Exception;
}
