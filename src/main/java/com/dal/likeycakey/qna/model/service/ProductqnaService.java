package com.dal.likeycakey.qna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.dal.likeycakey.qna.model.vo.Productqna;

public interface ProductqnaService {
	
	// 게시물 작성
	public void insertProductqna(Productqna pq) throws Exception;

	// 게시물 리스트 불러오기
	public ArrayList<Productqna> listAll() throws Exception;

}
