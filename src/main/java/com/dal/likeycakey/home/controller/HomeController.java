package com.dal.likeycakey.home.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
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

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController{
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/home.ca", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) {
		
	
		
		Timer timer = new Timer();
		TimerTask timerTask = new TimerTask() {
			
			@Override
			public void run() {
				ProductBoard productBoard = pbService.selectTodaysCake();
				System.out.println("점주 아이디는 : " + productBoard.getId());
				BizMember bizMember = pbService.selectBizMember(productBoard.getId());
				
				mv.addObject("todaysCake", productBoard)
				.addObject("todaysBizMember", bizMember)
				.setViewName("home");
			}
		};
		
		
		  Calendar calendar = new GregorianCalendar(Locale.KOREA);
		    calendar.set(Calendar.HOUR_OF_DAY, 12);
		    calendar.set(Calendar.MINUTE, 0);
		    calendar.set(Calendar.SECOND, 0);

		    //long nowDate = new Date().getTime();

		   /* if (nowDate > calendar.getTime().getTime()) {
		        calendar.add(Calendar.DAY_OF_YEAR, 1);
		    }*/
		
		timer.scheduleAtFixedRate(timerTask, calendar.getTime(), 10000);
		
		
		return mv;
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
	
	
}

