package com.dal.likeycakey.list.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.detailView.model.vo.ProductReview;
import com.dal.likeycakey.list.model.dao.ListDao;
import com.dal.likeycakey.list.model.vo.FilterList;

@Service("listService")
public class ListServiceImpl implements ListService {
	
	@Autowired
	private ListDao listDao;
	
	@Override
	public int getCakeCount(String inputsearch) throws Exception {
		return listDao.getCakeCount(inputsearch);
	}
	
	@Override
	public int getCakeCount(FilterList filterlist) throws Exception {
		return listDao.getCakeCount(filterlist);
	}
	
	@Override
	public int getVendorCakeCount(String inputvendor) throws Exception {
		return listDao.getVendorCakeCount(inputvendor);
	}
	
	@Override
	public int getVendorReviewCount(String inputvendor) throws Exception {
		return listDao.getVendorReviewCount(inputvendor);
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit){
		return listDao.selectCakeList(inputsearch, currentPage, limit);
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(FilterList filterlist, int currentPage, int limit){
		return listDao.selectCakeList(filterlist, currentPage, limit);
	}
	
	@Override
	public ArrayList<ProductBoard> selectVendorCakeList(String inputvendor, int pagecake_current, int limitcake){
		return listDao.selectVendorCakeList(inputvendor, pagecake_current, limitcake);
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder(FilterList filterlist, int currentPage, int limit){
		return listDao.selectCakeListwithOrder(filterlist, currentPage, limit);
	}
	
	@Override
	public ArrayList<ProductReview> selectVendorReviewList(String inputvendor, int pagereview_current, int limitreview){
		return listDao.selectVendorReviewList(inputvendor, pagereview_current, limitreview);
	}
	
	@Override
	public String selectLocationList(String id) {
		return listDao.selectLocationList(id);
	}
	
	@Override
	public String selectVendorLocationList(String inputvendor) {
		return listDao.selectVendorLocationList(inputvendor);
	}
	
	@Override
	public String selectReviewImgList(String id) {
		return listDao.selectReviewImgList(id);
	}
	
	@Override
	public String selectReviewCakeList(int pbNum) {
		return listDao.selectReviewCakeList(pbNum);
	}
}

