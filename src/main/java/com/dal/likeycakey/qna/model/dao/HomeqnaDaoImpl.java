package com.dal.likeycakey.qna.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.qna.model.vo.Homeqna;

@Repository("homeqnaDao")
public class HomeqnaDaoImpl implements HomeqnaDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 게시글 입력하기
	@Override
	public void insertHomeqna(Homeqna hq) throws Exception {
		sqlSession.insert("homeqna.insert", hq);
	}
	
	// 게시글 리스트 불러오기
	@Override
	public ArrayList<Homeqna> listAll() throws Exception {
		return new ArrayList<Homeqna>(sqlSession.selectList("homeqna.listAll"));
	}
	
	// 게시글 상세보기
	@Override
	public Homeqna read(int hqNum) throws Exception {
		return sqlSession.selectOne("homeqna.view", hqNum);
	}
	
}