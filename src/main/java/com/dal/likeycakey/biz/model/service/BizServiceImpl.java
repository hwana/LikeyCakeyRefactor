package com.dal.likeycakey.biz.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.biz.model.dao.BizDao;
import com.dal.likeycakey.member.model.vo.Member;

@Service("bizService")
public class BizServiceImpl implements BizService {
	
	@Autowired
	private BizDao bizDao;
	
	@Override
	public int insertBiz(Member member) throws Exception {
		int result = bizDao.insertBiz(member);
		return result;
	}

}
