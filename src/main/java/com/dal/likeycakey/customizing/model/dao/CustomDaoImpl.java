package com.dal.likeycakey.customizing.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.detailView.model.vo.CustomBoard;

@Repository("customDao")
public class CustomDaoImpl implements CustomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<CustomBoard> selectCustomCakeList(){
		return new ArrayList<CustomBoard>(sqlSession.selectList("customBoard.selectCustomCakeList"));
	}
	
	@Override
	public String selectNameList(String id) {
		return sqlSession.selectOne("bizMember.selectNameList", id);
	}
	
	@Override
	public String selectPhotoList(String id) {
		return sqlSession.selectOne("Member.selectPhotoList", id);
	}
	
	@Override
	public ArrayList<String> selectCreamList(String id) {
		return new ArrayList<String>(sqlSession.selectList("customBoard.selectCreamList", id));
	}
	
	@Override
	public ArrayList<String> selectSheetList(String id) {
		return new ArrayList<String>(sqlSession.selectList("customBoard.selectSheetList", id));
	}
	
	@Override
	public ArrayList<String> selectToppingList(String id) {
		return new ArrayList<String>(sqlSession.selectList("customBoard.selectToppingList", id));
	}
}
