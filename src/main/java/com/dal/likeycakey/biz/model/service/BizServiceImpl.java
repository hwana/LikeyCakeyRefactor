package com.dal.likeycakey.biz.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.biz.model.dao.BizDao;
import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.member.model.vo.Member;

@Service("bizService")
public class BizServiceImpl implements BizService {
	
	@Autowired
	private BizDao bizDao;
	
	@Override
	public int insertBiz1(Member m) throws Exception {
		int result = bizDao.insertBiz1(m);
		return result;
	}
	
	@Override
	public int insertBiz2(BizMember bm) throws Exception {
		int result2 = bizDao.insertBiz2(bm);
		return result2;
	}
	
	@Override
	public Member loginCheck(String id, String passwd) {
		
		return bizDao.selectMember(id, passwd);
	}
	
	@Override
	public int dupid(String id)  {
		return bizDao.selectMember(id);
	}

	@Override
	public int insertProductBoard(ProductBoard productBoard)  {
		System.out.println("bizService의 insertProductBoard입니다");
		return bizDao.insertProductBoard(productBoard);
	}
}

