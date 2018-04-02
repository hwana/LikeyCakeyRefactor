package com.dal.likeycakey.admin.model.dao;

import java.util.ArrayList;
import com.dal.likeycakey.admin.model.vo.Member;

public interface AdminDao {
	
	public int getListCount();
	
	public ArrayList<Member> selectList(int currentPage, int limit);
	

	/*
	public ArrayList<Board> selectList(int currentPage, int limit);
	
	public ArrayList<Board> selectTopList();
	
	public Board selectBoard(int boardNum);
	
	public int insertBoard(Board b);

	public int insertReply(Board replyBoard);
	
	public int addReadCount(int boardNum);
	
	public int updateBoard(Board b);

	public int updateReplySeq(Board replyBoard);

	public int updateBoardReply(Board b);

	public int deleteBoard(int boardNum);*/
}
