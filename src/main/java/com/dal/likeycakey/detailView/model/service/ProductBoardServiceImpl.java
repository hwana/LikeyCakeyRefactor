package com.dal.likeycakey.detailView.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.dao.ProductBoardDao;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.detailView.model.vo.ProductReview;
import com.dal.likeycakey.member.model.vo.BizWithMember;
import com.dal.likeycakey.member.model.vo.MemberLike;

@Service("pbService")
public class ProductBoardServiceImpl implements ProductBoardService {
	
	@Autowired
	ProductBoardDao pbDao;
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ProductBoard> selectList(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductBoard> selectTopList() {
		// TODO Auto-generated method stub
		return pbDao.selectTopList();
	}
	

	@Override
	public ProductBoard selectTodaysCake() {
		// TODO Auto-generated method stub
		return pbDao.selectTodaysCake();
	}
	
	@Override
	public ProductBoard selectBoard(int pbNum) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void addReadCnt(int pbNum) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addSellcnt(int pbNum) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BizMember selectBizMember(String id) {
		// TODO Auto-generated method stub
		return pbDao.selectBizMember(id);
	}

	@Override
	public ArrayList<ProductBoard> selectNewArrivalList() {
		// TODO Auto-generated method stub
		return pbDao.selectNewArrivalList();
	}

	@Override
	public String selectBizAddress(String id) {
		// TODO Auto-generated method stub
		return pbDao.selectBizAddress(id);
	}

	@Override
	public ArrayList<ProductBoard> selectBestSellerList() {
		// TODO Auto-generated method stub
		return pbDao.selectBestSellerList();
	}

	@Override
	public ArrayList<ProductBoard> selectBestLikeyList() {
		// TODO Auto-generated method stub
		return pbDao.selectBestLikeyList();
	}

	@Override
	public int insertHeartMember(String pbNum, String id) {
		return pbDao.insertHeartMember(pbNum, id);
		
	}

	@Override
	public int updateLikeyBoard(String pbNum) {
		return pbDao.updateLikeyBoard(pbNum);
		
	}

	@Override
	public ArrayList<MemberLike> selectMemberLikeList(String id) {
		return pbDao.selectMemberLikeList(id);
	}

	@Override
	public int updateSubtractLikeyBoard(String pbNum) {
		return pbDao.updateSubtractLikeyBoard(pbNum);
	}

	@Override
	public int deleteHeartMember(String pbNum, String id) {
		return pbDao.deleteHeartMember(pbNum, id);
	}

	@Override
	public ProductBoard selectProductDetail(String pbNum) {
		// TODO Auto-generated method stub
		return pbDao.selectProductDetail(pbNum);
	}

	@Override
	public BizWithMember selectProductDetailBiz(String id) {
		return pbDao.selectProductDetailBiz(id);
	}

	@Override
	public ArrayList<ProductReview> selectReviewList(String pbNum) {
		return pbDao.selectReviewList(pbNum);
	}


}
