package com.dal.likeycakey.qna.model.service;

import java.util.ArrayList;
import java.util.List;

import com.dal.likeycakey.qna.model.vo.Homeqna;

public interface HomeqnaService {
	public void insertHomeqna(Homeqna hq) throws Exception;
	public ArrayList<Homeqna> listAll() throws Exception;
	public Homeqna read(int hqNum) throws Exception;
}
