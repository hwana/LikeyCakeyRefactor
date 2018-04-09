package com.dal.likeycakey.list.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;

public interface ListDao {
	
	public int getCakeCount(String inputsearch) throws Exception;
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit);
	public String selectLocationList(String id);
}
