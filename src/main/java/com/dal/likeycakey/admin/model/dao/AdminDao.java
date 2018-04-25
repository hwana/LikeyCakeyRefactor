package com.dal.likeycakey.admin.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.member.model.vo.Member;

public interface AdminDao {
	
	public int getListCount() throws Exception;
	
	public ArrayList<Member> selectList() throws Exception;
	
	public Member selectOne(String id) throws Exception;
	
	public int updateMember(Member m) throws Exception;
	
	public int deleteMember(String id) throws Exception;
	
	public int deleteTotalMember() throws Exception;

	public ArrayList<Member> selectBizList() throws Exception;

	public ArrayList<Member> activeMember() throws Exception;

	public ArrayList<Member> nomalMember() throws Exception;

	public ArrayList<Member> bizMember() throws Exception;
}

