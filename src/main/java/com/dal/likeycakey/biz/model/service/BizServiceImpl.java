package com.dal.likeycakey.biz.model.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.biz.model.dao.BizDao;
import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.member.model.vo.Member;

@Service("bizService")
public class BizServiceImpl implements BizService{
	
	@Autowired
	private BizDao bizDao;
	
	
	@Override
	public int insertBiz(Member m) throws Exception {
		
		int result = bizDao.insertBiz(m);
		
		return result;
	}
	
	@Override
	public int insertBiz(BizMember bm) throws Exception {
		
		int result2 = bizDao.insertBiz(bm);
		
		return result2;
	}
	
	//로그인
	@Override
	public int loginCheck(String id, String passwd) throws Exception {
		System.out.println("SERVICE="+id);
		System.out.println("SERVICE="+passwd);
		int result = bizDao.loginCheck(id, passwd);
		System.out.println("SERVICE="+result);
		return result;
	}
	
	
}
