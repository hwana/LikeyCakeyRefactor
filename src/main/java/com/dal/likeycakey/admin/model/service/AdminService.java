package com.dal.likeycakey.admin.model.service;

import java.util.ArrayList;


import com.dal.likeycakey.member.model.vo.Member;

public interface AdminService {


	
	public int getListCount() ;
	
	public ArrayList<Member> selectList(int currentPage, int limit) ;
	
	public Member selectOne(String id);
	
	public int updateMember(Member m) ;
	
	public int deleteTotalMember() ;
	public int deleteMember(String id) ;
	
}