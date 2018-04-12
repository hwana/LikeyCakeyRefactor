package com.dal.likeycakey.list.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.detailView.model.vo.ProductReview;
import com.dal.likeycakey.list.model.vo.FilterList;

public interface ListDao {
	
	public int getCakeCount(String inputsearch) throws Exception;
	public int getCakeCount(FilterList filterlist) throws Exception;
	public int getVendorCakeCount(String inputvendor) throws Exception;
	public int getVendorReviewCount(String inputvendor) throws Exception;
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit);
	public ArrayList<ProductBoard> selectCakeList(FilterList filterlist, int currentPage, int limit);
	public ArrayList<ProductBoard> selectVendorCakeList(String inputvendor, int pagecake_current, int limitcake);
	public ArrayList<ProductBoard> selectCakeListwithOrder(FilterList filterlist, int currentPage, int limit);
	public ArrayList<ProductReview> selectVendorReviewList(String inputvendor, int pagereview_current, int limitreview);
	public String selectLocationList(String id);
	public String selectVendorLocationList(String inputvendor);
	public String selectReviewImgList(String id);
	public String selectReviewCakeList(int pbNum);
}
