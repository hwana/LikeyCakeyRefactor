package com.dal.likeycakey.detailView.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


	// @Component 에서 Controller부분의 기본 설정을 추가한 자동 매핑 어노테이션 
	// @Component의 확장판
	@Controller
	public class DetailViewController {

		
		@RequestMapping(value="detail.ca", method=RequestMethod.GET)
		public String detailVeiw(Model model) {
			
			return "detailView/detailView";
		}
		
		@RequestMapping(value="custom.ca", method=RequestMethod.GET)
		public String customDetail(Model model) {
			
			return "detailView/customDetail";
		}
		
	}

