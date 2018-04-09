package com.dal.likeycakey.list.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.list.model.dao.ListDao;

@Service("listService")
public class ListServiceImpl implements ListService {
	
	@Autowired
	private ListDao listDao;
	
	@Override
	public int getCakeCount(String inputsearch) throws Exception {
		return listDao.getCakeCount(inputsearch);
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit){
		return listDao.selectCakeList(inputsearch, currentPage, limit);
	}
	
	@Override
	public String selectLocationList(String id) {
		return listDao.selectLocationList(id);
	}
}

