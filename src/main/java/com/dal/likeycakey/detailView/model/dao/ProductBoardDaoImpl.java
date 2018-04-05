package com.dal.likeycakey.detailView.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;

@Repository("pbDao")
public class ProductBoardDaoImpl implements ProductBoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<ProductBoard> selectTopList() {
		// 							   0부터 시작해서 3개
		RowBounds rows = new RowBounds(0, 3);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectTop3", null, rows));
	}

	@Override
	public ProductBoard selectTodaysCake() {
		return sqlSession.selectOne("productBoard.selectTodaysCake");
	}

	@Override
	public BizMember selectBizMember(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bizMember.selectBizMember", id);
	}

	@Override
	public ArrayList<ProductBoard> selectNewArrivalList() {
		RowBounds rows = new RowBounds(0, 6);
		return new ArrayList<ProductBoard> (sqlSession.selectList("productBoard.selectNewArrivalList", null, rows));
	}

	@Override
	public String selectBizAddress(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectBizAddress", id);
	}

}
