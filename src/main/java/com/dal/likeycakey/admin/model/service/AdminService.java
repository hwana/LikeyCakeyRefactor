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
	/*
	public ArrayList<Board> selectTopList();
	
	public Board selectBoard(int boardNum);
	
	public int insertBoard(Board b);

	public int insertReply(Board replyBoard);
	
	public void addReadCount(int boardNum);
	
	public int updateBoard(Board b);

	public void updateReplySeq(Board replyBoard);

	public int updateBoardReply(Board b);

	public int deleteBoard(int boardNum);	*/
}
