package com.dal.likeycakey.admin.model.service;

import java.util.ArrayList;


import com.dal.likeycakey.member.model.vo.Member;

public interface AdminService {


	
	public int getListCount() throws Exception;
	
	public ArrayList<Member> selectList(int currentPage, int limit) throws Exception;
	
	public Member selectOne(String id) throws Exception;
	
	public int updateMember(Member m) throws Exception;
	
	public int deleteTotalMember() throws Exception;
	
	public int deleteMember(String id) throws Exception;
	
}