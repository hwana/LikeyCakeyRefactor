package com.dal.likeycakey.qna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.qna.model.dao.ProductqnaDao;
import com.dal.likeycakey.qna.model.vo.Homeqna;
import com.dal.likeycakey.qna.model.vo.Productqna;

@Service("productqnaService")
public class ProductqnaServiceImpl implements ProductqnaService {
	
	@Autowired
	private ProductqnaDao productqnaDao;
	
	// 게시글 작성
	@Override
	public void insertProductqna(Productqna pq) throws Exception {
        productqnaDao.insertProductqna(pq);
	}
	
	// 게시글 리스트 불러오기
	@Override
	public ArrayList<Productqna> listAll() throws Exception {
		return productqnaDao.listAll();
	}

}
