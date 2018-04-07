package com.dal.likeycakey.home.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.service.ProductBoardService;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;

@Controller
public class HomeController{
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/home.ca", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) {
		
		
		
		// 오늘의 상품
		ProductBoard todaysCake = todaysCake();
		// 오늘의 상품 Biz셀렉트
		BizMember todaysBiz = selectBizMember(todaysCake.getId());
		// New Arrival 리스트
		ArrayList<ProductBoard> newArrivalList = newArrivalList();
		// New Arrival 사업장 주소 리스트
		String [] newArrivalAddr = new String [newArrivalList.size()];
		for (int i = 0; i < newArrivalList.size(); i++) {
			newArrivalAddr[i] = selectBizAddress(newArrivalList.get(i).getId());
		}
		//BestSeller 리스트
		ArrayList<ProductBoard> bestSellerList = selectBestSellerList();
		//BestSeller 사업장 주소 리스트
		String [] bestSellerAddr = new String[bestSellerList.size()];
		for (int i = 0; i < bestSellerAddr.length; i++) {
			bestSellerAddr[i] = selectBizAddress(bestSellerList.get(i).getId());
		}
		ArrayList<ProductBoard> bestLikeyList = selectBestLikeyList();
		String[] bestLikeyAddr = new String[bestLikeyList.size()];
		for (int i=0; i < bestLikeyAddr.length; i++ ) {
			bestLikeyAddr[i] = selectBizAddress(bestLikeyList.get(i).getId());
		}
		
		mv.addObject("todaysCake", todaysCake)
		.addObject("todaysBiz", todaysBiz)
		.addObject("newArrivalList", newArrivalList)
		.addObject("newArrivalAddr", newArrivalAddr)
		.addObject("bestSellerList", bestSellerList)
		.addObject("bestSellerAddr", bestSellerAddr)
		.addObject("bestLikeyList", bestLikeyList)
		.addObject("bestLikeyAddr", bestLikeyAddr)
		.setViewName("home");
		
		return mv;
	}

	// Top3 리스트
	@SuppressWarnings("unchecked")
	@RequestMapping("top3List.ca")
	public void top3List(HttpServletResponse response) throws IOException {
		ArrayList<ProductBoard> list = pbService.selectTopList();
		
		// 전송할 최종 JSON 객체
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(ProductBoard pb : list) {
			
			// 상세페이지 하나 씩의 정보를 저장할 json 객체 설정
			JSONObject pBoard = new JSONObject();
			pBoard.put("pbNum", pb.getPbNum());
			pBoard.put("pImg", pb.getpImg());
			// json에서 한글 깨짐을 막으려면, java.net.URLEncoder 클래스의 encode() 메소드로 인코딩 처리
			pBoard.put("pName", URLEncoder.encode(pb.getpName(), "UTF-8").replace("+", " "));
			
			jarr.add(pBoard);
		}
		
		json.put("list", jarr);
		System.out.println(json.toJSONString());
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
		
	}
	
	
	// Home(메인 페이지) - 오늘의 상품 
	public ProductBoard todaysCake() {
			
		/*
		
			Timer timer = new Timer();
			TimerTask timerTask = new TimerTask() {
				
				@Override
				public void run() {*/
					ProductBoard todaysCake = pbService.selectTodaysCake();
					
		/*		}
				
				
			};
			
			
			  Calendar calendar = new GregorianCalendar(Locale.KOREA);
			    calendar.set(Calendar.HOUR_OF_DAY, 12);
			    calendar.set(Calendar.MINUTE, 0);
			    calendar.set(Calendar.SECOND, 0);

			    long nowDate = new Date().getTime();

			    if (nowDate > calendar.getTime().getTime()) {
			        calendar.add(Calendar.DAY_OF_YEAR, 1);
			    }
			
			timer.scheduleAtFixedRate(timerTask, calendar.getTime(), 10000);*/
			
			return todaysCake;
	}
	
	// 사업자 셀렉트(Biz만)
	public BizMember selectBizMember(String id) {
		BizMember bizMember = pbService.selectBizMember(id);
		return bizMember;
	}
	
	// NEW ARRIVAL 리스트 
	public ArrayList<ProductBoard> newArrivalList(){
		ArrayList<ProductBoard> newArrivalList = pbService.selectNewArrivalList();
		return newArrivalList;
	}
	
	// 사업자 아이디로 검색해서 주소 자치구까지만 불러오기
	public String selectBizAddress(String id) {
		String bizAddress = pbService.selectBizAddress(id);
		
		int gu = bizAddress.lastIndexOf("구");
		bizAddress = bizAddress.substring(0, gu+1);
		return bizAddress;
	}
	
	// BEST SELLER 리스트 
	private ArrayList<ProductBoard> selectBestSellerList() {
		ArrayList<ProductBoard> selectBestSellerList = pbService.selectBestSellerList();
		return selectBestSellerList;
	}
	
	// BEST LIKEY 리스트
	private ArrayList<ProductBoard> selectBestLikeyList() {
		ArrayList<ProductBoard> selectBestLikeyList = pbService.selectBestLikeyList();
		return selectBestLikeyList;
	}

	
	@RequestMapping(value = "/cakelist.ca", method = RequestMethod.GET)
	public String cakeList() {
		return "list/cakelist";
	}
	
	@RequestMapping(value = "/hostpage.ca", method = RequestMethod.GET)
	public String hostPage() {
		return "list/hostpage";
	}
	
	@Autowired
	private ProductBoardService pbService;
	
	
	
}

