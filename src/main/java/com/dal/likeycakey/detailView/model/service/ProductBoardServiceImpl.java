package com.dal.likeycakey.detailView.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.dao.ProductBoardDao;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;

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


}
