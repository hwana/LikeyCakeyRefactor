package com.dal.likeycakey.detailView.model.service;

import java.util.ArrayList;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;

public interface ProductBoardService {
	
	public int getListCount();
	
	public ArrayList<ProductBoard> selectList(int currentPage, int limit);
	
	public ArrayList<ProductBoard> selectTopList();
	
	public ProductBoard selectBoard(int pbNum);
	
	public void addReadCount(int pbNum);
	
}
