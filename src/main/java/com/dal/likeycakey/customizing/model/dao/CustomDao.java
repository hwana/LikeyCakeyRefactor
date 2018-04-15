package com.dal.likeycakey.customizing.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.detailView.model.vo.CustomBoard;

public interface CustomDao {
	public ArrayList<CustomBoard> selectCustomCakeList();
	public String selectNameList(String id);
	public String selectPhotoList(String id);
	public ArrayList<String> selectCreamList(String id);
	public ArrayList<String> selectSheetList(String id);
	public ArrayList<String> selectToppingList(String id);
}
