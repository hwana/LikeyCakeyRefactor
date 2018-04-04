package com.dal.likeycakey.admin.model.service;

import java.util.ArrayList;

import  com.dal.likeycakey.admin.model.dao.AdminDao;
import com.dal.likeycakey.member.model.vo.Member;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminDao;
	
	@Override
	public int getListCount() {
		return adminDao.getListCount();
	}

	@Override
	public ArrayList<Member> selectList(int currentPage, int limit) {
		return adminDao.selectList(currentPage, limit);
	}
	@Override
	public Member selectOne(String id) {
		return adminDao.selectOne(id);
	}
	@Override
	public int updateMember(Member m) {
		return adminDao.updateMember(m);	
		
	}
	@Override
	public int deleteMember(String id) {
		
		return adminDao.deleteMember(id);
	}
	
	
	
	
	/*@Override
	public int getListCount() {
		return adminDao.getListCount();
	}
*/
	/*@Override
	public ArrayList<Board> selectList(int currentPage, int limit) {
		return bDao.selectList(currentPage, limit);
	}

	@Override
	public ArrayList<Board> selectTopList() {
		return bDao.selectTopList();
	}

	@Override
	public Board selectBoard(int boardNum) {
		return bDao.selectBoard(boardNum);
	}

	@Override
	public int insertBoard(Board b) {
		return bDao.insertBoard(b);
	}

	@Override
	public int insertReply(Board replyBoard) {
		return bDao.insertReply(replyBoard);
	}

	@Override
	public void addReadCount(int boardNum) {
		bDao.addReadCount(boardNum);
	}

	@Override
	public int updateBoard(Board b) {
		return bDao.updateBoard(b);
	}

	@Override
	public void updateReplySeq(Board replyBoard) {
		bDao.updateReplySeq(replyBoard);
	}

	@Override
	public int updateBoardReply(Board b) {
		return bDao.updateBoardReply(b);
	}

	@Override
	public int deleteBoard(int boardNum) {
		return bDao.deleteBoard(boardNum);
	}
*/
}
