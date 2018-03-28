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
public class bizController {
	
	private static final Logger logger = LoggerFactory.getLogger(bizController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "bizLogin.ca", method = RequestMethod.GET)
	public String bizLogin(Locale locale, Model model) {
		
		
		return "biz/bizLogin";
	}
	
	@RequestMapping(value = "bizJoin.ca", method = RequestMethod.GET)
	public String bizJoin(Locale locale, Model model) {
		
		
		return "biz/bizJoin";
	}
	
	@RequestMapping(value = "bizMypageModify.ca", method = RequestMethod.GET)
	public String bizMypageModify(Locale locale, Model model) {
		
		
		return "biz/bizMypageModify";
	}
	
	@RequestMapping(value = "nocakeUpload.ca", method = RequestMethod.GET)
	public String nocakeUpload(Locale locale, Model model) {
		
		
		return "biz/nocakeUpload";
	}
	

	@RequestMapping(value = "yescakeUpload.ca", method = RequestMethod.GET)
	public String yescakeUpload(Locale locale, Model model) {
		
		
		return "biz/yescakeUpload";
	}
	
	@RequestMapping(value = "productCakeUpload.ca", method = RequestMethod.GET)
	public String productCakeUpload(Locale locale, Model model) {
		
		
		return "biz/productCakeUpload";
	}
	
	@RequestMapping(value = "customCakeUpload.ca", method = RequestMethod.GET)
	public String customCakeUpload(Locale locale, Model model) {
		
		
		return "biz/customCakeUpload";
	}
	
	@RequestMapping(value = "pcSelect.ca", method = RequestMethod.GET)
	public String pcSelect(Locale locale, Model model) {
		
		
		return "biz/pcSelect";
	}
	
	@RequestMapping(value = "bizQNA.ca", method = RequestMethod.GET)
	public String bizQNA(Locale locale, Model model) {
		
		
		return "biz/bizQNA";
	}
	
	@RequestMapping(value = "uploadComplete.ca", method = RequestMethod.GET)
	public String uploadOK(Locale locale, Model model) {
		
		
		return "biz/uploadComplete";
	}
	
	@RequestMapping(value = "findIdPw.ca", method = RequestMethod.GET)
	public String findIdPw(Locale locale, Model model) {
		
		
		return "biz/findIdPw";
	}
	
	
}
