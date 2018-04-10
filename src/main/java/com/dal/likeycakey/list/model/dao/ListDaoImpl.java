package com.dal.likeycakey.list.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.list.model.vo.FilterList;

@Repository("listDao")
public class ListDaoImpl implements ListDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getCakeCount(String inputsearch) throws Exception {
		System.out.println("listDao의 getCakeCount(inputsearch)입니다.");
		return sqlSession.selectOne("productBoard.getCakeCount", inputsearch);
	}
	
	@Override
	public int getCakeCount(FilterList filterlist) throws Exception {
		System.out.println("listDao의 getCakeCount(filterlist)입니다.");
		return sqlSession.selectOne("productBoard.getCakeCountwf", filterlist);
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit){
		System.out.println("listDao의 selectCakeList(inputsearch)입니다.");
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeList", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(FilterList filterlist, int currentPage, int limit){
		System.out.println("listDao의 selectCakeList(filterlist)입니다.");
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwf", filterlist, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder(FilterList filterlist, int currentPage, int limit){
		System.out.println("listDao의 selectCakeListwithOrder(filterlist)입니다.");
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwo", filterlist, rows));
	}
	
	@Override
	public String selectLocationList(String id) {
		System.out.println("listDao의 selectLocationList입니다.");
		return sqlSession.selectOne("Member.selectBizAddress", id);
	}
}
