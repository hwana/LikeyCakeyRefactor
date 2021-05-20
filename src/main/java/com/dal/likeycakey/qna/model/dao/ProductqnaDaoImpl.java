package com.dal.likeycakey.qna.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.qna.model.vo.Homeqna;
import com.dal.likeycakey.qna.model.vo.Productqna;

import java.util.ArrayList;
import java.util.HashMap;

@Repository("productqnaDao")
public class ProductqnaDaoImpl implements ProductqnaDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 게시글 입력하기
		@Override
		public void insertProductqna(Productqna pq) throws Exception {
			sqlSession.insert("productqna.insert", pq);
		}
		
		// 게시글 리스트 불러오기
		@Override
		public ArrayList<Productqna> listAll() throws Exception {
			return new ArrayList<Productqna>(sqlSession.selectList("productqna.listAll"));
		}
}
