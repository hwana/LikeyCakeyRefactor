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

	@Override
	public int deleteTotalMember() {
		// TODO Auto-generated method stub
		return adminDao.deleteTotalMember();
	}
	
	

}