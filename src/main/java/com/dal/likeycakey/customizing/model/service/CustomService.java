package com.dal.likeycakey.customizing.model.service;

import java.util.ArrayList;

import com.dal.likeycakey.detailView.model.vo.CustomBoard;

public interface CustomService {
	public ArrayList<CustomBoard> selectCustomCakeList();
	public String selectNameList(String id);
	public String selectPhotoList(String id);
	public ArrayList<String> selectCreamList(String id);
	public ArrayList<String> selectSheetList(String id);
	public ArrayList<String> selectToppingList(String id);
}
