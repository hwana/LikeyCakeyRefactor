package com.dal.likeycakey.detailView.model.service;

import java.util.ArrayList;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;

public interface ProductBoardService {
	
	public int getListCount();
	
	public ArrayList<ProductBoard> selectList(int currentPage, int limit);
	
	public ProductBoard selectTodaysCake();
	
	public ArrayList<ProductBoard> selectTopList();
	
	public ProductBoard selectBoard(int pbNum);
	
	public void addReadCnt(int pbNum);
	
	public void addSellcnt(int pbNum); 
	
	public BizMember selectBizMember(String id);

	public ArrayList<ProductBoard> selectNewArrivalList();

	public String selectBizAddress(String id);
	
}
