package com.dal.likeycakey.delivery.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DeliveryController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/delivery.ca", method = RequestMethod.GET)
	public String delivery(Locale locale, Model model) {
		
		
		return "delivery/delivery";
	}
	
	@RequestMapping(value = "/delivery2.ca", method = RequestMethod.GET)
	public String delivery2(Locale locale, Model model) {
		
		
		return "delivery/delivery2";
	}
	
	
	
}
