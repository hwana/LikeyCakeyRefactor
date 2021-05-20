package com.dal.likeycakey.qna.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.qna.model.dao.HomeqnaDao;
import com.dal.likeycakey.qna.model.vo.Homeqna;

@Service("homeqnaService")
public class HomeqnaServiceImpl implements HomeqnaService {

	@Autowired
	private HomeqnaDao homeqnaDao;
	
	@Override
	public void insertHomeqna(Homeqna hq) throws Exception {
        homeqnaDao.insertHomeqna(hq);
	}
	
	@Override
	public ArrayList<Homeqna> listAll() throws Exception {
		return homeqnaDao.listAll();
	}
	
	// 게시글 상세보기로 넘어가는 서비스
	@Override
	public Homeqna read(int hqNum) throws Exception {
		return homeqnaDao.read(hqNum);
	}
}
