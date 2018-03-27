package com.dal.likeycakey.defaultPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


	// @Component 에서 Controller부분의 기본 설정을 추가한 자동 매핑 어노테이션 
	// @Component의 확장판
	@Controller
	public class DefaultController {

		
		@RequestMapping(value="header.ca", method=RequestMethod.GET)
		public String testSelectOne(Model model) {
			
			return "default/header";
		}
		
		@RequestMapping(value="footer.ca", method=RequestMethod.GET)
		public String testMyHome(Model model) {
			
			return "default/footer";
		}
		
	}

