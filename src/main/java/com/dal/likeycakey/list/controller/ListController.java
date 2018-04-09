package com.dal.likeycakey.list.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.biz.model.service.BizService;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.list.model.service.ListService;

@Controller
public class ListController {
	
	@Autowired
	private ListService listService;
	
	@RequestMapping(value = "cakeSearch.ca", method = RequestMethod.GET)
	public ModelAndView cakeSearch(
			@RequestParam("input_search") String inputsearch,
			ModelAndView mv) {
		
		// 페이지 값 처리용
		int currentPage = 1;

		// 한 페이지당 출력할 목록 갯수
		int limit = 6;
		
		// 총 검색 케이크 수
		int cakeCount = 0;
		
		try {
		// 전체 목록 갯수와 해당 페이지별 목록을 리턴
		cakeCount = listService.getCakeCount(inputsearch);
			System.out.println("태그관련케이크 개수 : " + cakeCount);
		} catch (Exception e){
			System.out.println("태그관련케이크 개수를 불러오는데 실패 ");
			System.out.println(e);
		}
		
		ArrayList<ProductBoard> cakelist = listService.selectCakeList(inputsearch, currentPage, limit);
		ArrayList<String> locationlist = new ArrayList<String>();
		for(int i=0; i<cakelist.size(); i++) {
			locationlist.add(listService.selectLocationList(cakelist.get(i).getId()));
		}
		
		// 총 페이지 수
		int maxpage = (cakeCount + limit - 1) / limit;

		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startpage = ((currentPage - 1) / 6) * 6 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		int endpage = startpage + 6 - 1;

		if (endpage > maxpage)
			endpage = maxpage;
	    
		if (cakelist != null && cakelist.size() > 0) {
			
			System.out.println("케이크 조회 가져오기 성공");
			mv.addObject("input_search", inputsearch)
			.addObject("cakelist", cakelist)
			.addObject("currentPage", currentPage)
			.addObject("maxpage", maxpage)
			.addObject("startpage", startpage)
			.addObject("endpage", endpage)
			.addObject("cakeCount", cakeCount)
			.addObject("locationlist", locationlist);
			mv.setViewName("list/cakelist");
			
		} else {
			System.out.println("케이크 조회 실패");
			mv.addObject("input_search", inputsearch);
			mv.setViewName("list/cakelist");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "cakeSearchList.ca", method = RequestMethod.GET)
	public ModelAndView cakeSearchList(
			@RequestParam(value = "page", required=false) Integer page,
			ModelAndView mv) {
		
		return mv;
	}
}
