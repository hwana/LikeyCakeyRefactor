package com.dal.likeycakey.list.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.list.model.vo.FilterList;

public interface ListDao {
	
	public int getCakeCount(String inputsearch) throws Exception;
	public int getCakeCount(FilterList filterlist) throws Exception;
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit);
	public ArrayList<ProductBoard> selectCakeList(FilterList filterlist, int currentPage, int limit);
	public ArrayList<ProductBoard> selectCakeListwithOrder(FilterList filterlist, int currentPage, int limit);
	public String selectLocationList(String id);
}
