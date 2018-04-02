package com.dal.likeycakey.admin.model.service;

import java.util.ArrayList;

import com.dal.likeycakey.admin.model.vo.AdminMember;

public interface AdminService {


	
	public int getListCount() ;
	
	public ArrayList<AdminMember> selectList(int currentPage, int limit) ;
	
	
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
