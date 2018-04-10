package com.dal.likeycakey.detailView.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.member.model.vo.MemberLike;

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

	@Override
	public ArrayList<ProductBoard> selectBestSellerList() {
		RowBounds rows = new RowBounds(0, 6);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectTop3", null, rows));
	}

	@Override
	public ArrayList<ProductBoard> selectBestLikeyList() {
		RowBounds rows = new RowBounds(0, 6);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectLikeyList", null, rows));
	}
	
	
	// MEMBER_LIKE 회원 좋아요 INSERT
	@Override
	public int insertHeartMember(String pbNum, String id) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pbNum", pbNum);
		map.put("id", id);
		return sqlSession.insert("Member.insertHeartMember", map);
	}

	@Override
	public int updateLikeyBoard(String pbNum) {
		return sqlSession.update("productBoard.updateLikeyBoard", pbNum);
	}

	@Override
	public ArrayList<MemberLike> selectMemberLikeList(String id) {
		return new ArrayList<MemberLike>(sqlSession.selectList("Member.selectMemberLikeList", id));
	}

	@Override
	public int updateSubtractLikeyBoard(String pbNum) {
		return sqlSession.update("productBoard.updateSubtractLikeyBoard", pbNum);
	}

	@Override
	public int deleteHeartMember(String pbNum, String id) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pbNum", pbNum);
		map.put("id", id);
		return sqlSession.delete("Member.deleteHeartMember", map);
	}

}
