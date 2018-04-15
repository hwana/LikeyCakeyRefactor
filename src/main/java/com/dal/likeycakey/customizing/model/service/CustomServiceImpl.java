package com.dal.likeycakey.customizing.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.customizing.model.dao.CustomDao;
import com.dal.likeycakey.detailView.model.vo.CustomBoard;

@Service("customService")
public class CustomServiceImpl implements CustomService {
	
	@Autowired
	private CustomDao customDao;
	
	@Override
	public ArrayList<CustomBoard> selectCustomCakeList(){
		return customDao.selectCustomCakeList();
	}

	@Override
	public String selectNameList(String id) {
		return customDao.selectNameList(id);
	}
	
	@Override
	public String selectPhotoList(String id) {
		return customDao.selectPhotoList(id);
	}
	
	@Override
	public ArrayList<String> selectSheetList(String id) {
		return customDao.selectSheetList(id);
	}
	
	@Override
	public ArrayList<String> selectToppingList(String id) {
		return customDao.selectToppingList(id);
	}
	
	@Override
	public ArrayList<String> selectCreamList(String id) {
		return customDao.selectCreamList(id);
	}
}
