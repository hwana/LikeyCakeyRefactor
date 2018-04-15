package com.dal.likeycakey.customizing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomController {

	@RequestMapping(value="customlist.ca", method = RequestMethod .GET)
	public String customList() {
		return "customizing/customizing";
	}
}
