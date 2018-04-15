package com.dal.likeycakey.qna.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.qna.model.vo.Productqna;

public interface ProductqnaDao {

	// 게시글 리스트 불러오기
	public ArrayList<Productqna> listAll() throws Exception;
	
	// 게시글 작성
	public void insertProductqna(Productqna pq) throws Exception;

}
