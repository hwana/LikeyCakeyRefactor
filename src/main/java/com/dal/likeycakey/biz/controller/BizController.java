package com.dal.likeycakey.biz.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * 
 * Handles requests for the application home page.
 */
@Controller
public class BizController {
	
	private static final Logger logger = LoggerFactory.getLogger(BizController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	//사업자 로그인
	@RequestMapping(value = "bizLogin.ca", method = RequestMethod.GET)
	public String bizLogin(Locale locale, Model model) {
		
		
		return "biz/bizLogin";
	}
	
	//사업자 회원가입
	@RequestMapping(value = "bizJoin.ca", method = RequestMethod.GET)
	public String bizJoin(Locale locale, Model model) {
		
		
		return "biz/bizJoin";
	}
	
	//사업자 회원정보, 매장정보 수정
	@RequestMapping(value = "bizMypageModify.ca", method = RequestMethod.GET)
	public String bizMypageModify(Locale locale, Model model) {
		
		
		return "biz/bizMypageModify";
	}
	
	//등록된 케이크가 하나도 없는 상태에서 케이크 등록하는 페이지
	@RequestMapping(value = "nocakeUpload.ca", method = RequestMethod.GET)
	public String nocakeUpload(Locale locale, Model model) {
		
		
		return "biz/nocakeUpload";
	}
	

	//등록한 케이크가 있는 상태에서 케이크 등록하는 페이지
	@RequestMapping(value = "yescakeUpload.ca", method = RequestMethod.GET)
	public String yescakeUpload(Locale locale, Model model) {
		
		
		return "biz/yescakeUpload";
	}
	
	//완제품 케이크 등록 페이지
	@RequestMapping(value = "productCakeUpload.ca", method = RequestMethod.GET)
	public String productCakeUpload(Locale locale, Model model) {
		
		
		return "biz/productCakeUpload";
	}
	
	//커스텀 케이크 등록 페이지
	@RequestMapping(value = "customCakeUpload.ca", method = RequestMethod.GET)
	public String customCakeUpload(Locale locale, Model model) {
		
		
		return "biz/customCakeUpload";
	}
	
	//케이크 등록하기 버튼 클릭 후 완제품케이크를 등록할건지 커스텀 케이크를 등록할건지 선택하는 페이지
	@RequestMapping(value = "pcSelect.ca", method = RequestMethod.GET)
	public String pcSelect(Locale locale, Model model) {
		
		
		return "biz/pcSelect";
	}
	
	
	//사업자에게 들어온 문의글 모아보는 페이지
	@RequestMapping(value = "bizQNA.ca", method = RequestMethod.GET)
	public String bizQNA(Locale locale, Model model) {
		
		
		return "biz/bizQNA";
	}
	
	//"등록이 완료되었습니다"페이지
	@RequestMapping(value = "uploadComplete.ca", method = RequestMethod.GET)
	public String uploadOK(Locale locale, Model model) {
		
		
		return "biz/uploadComplete";
	}
	
	//사업자 아이디 패스워드 찾는 페이지
	@RequestMapping(value = "findIdPw.ca", method = RequestMethod.GET)
	public String findIdPw(Locale locale, Model model) {
		
		
		return "biz/findIdPw";
	}
	
	
}
