package com.dal.likeycakey.member.model.dao;
import java.util.ArrayList;
import java.util.List;

import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.qna.model.vo.Homeqna;
public interface MemberDao {
	public int insertMember(Member m) throws Exception;
	public int updateMember(Member m) throws Exception;
	public int deleteMember(String id) throws Exception;
	public Member forLogin(String id, String passwd) throws Exception;
	public int selectMember(String id);
	public Member findId(String email, String name) throws Exception;
	public int updatePassword(Member m) throws Exception;
	public ArrayList<Homeqna> homeqlist(Member m) throws Exception;
	public void insertEmailConfirm(String id, String key);
	public List<Member> findId(Member m);
}
