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
	public int getListCount() throws Exception{
		return adminDao.getListCount();
	}

	@Override
	public ArrayList<Member> selectList(int currentPage, int limit) throws Exception{
		return adminDao.selectList(currentPage, limit);
	}
	@Override
	public Member selectOne(String id) throws Exception{
		return adminDao.selectOne(id);
	}
	@Override
	public int updateMember(Member m) throws Exception{
		return adminDao.updateMember(m);	
		
	}
	@Override
	public int deleteMember(String id) throws Exception{
		
		return adminDao.deleteMember(id);
	}

	@Override
	public int deleteTotalMember() throws Exception{
		// TODO Auto-generated method stub
		return adminDao.deleteTotalMember();
	}
	
	

}