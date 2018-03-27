package com.dal.likeycakey.payment.controller;

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
public class PaymentController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/checkout.ca", method = RequestMethod.GET)
	public String checkout(Locale locale, Model model) {
		
		
		return "payment/checkout";
	}
	
	
	@RequestMapping(value = "/cart.ca", method = RequestMethod.GET)
	public String cart(Locale locale, Model model) {
		
		return "payment/cart";
	}
	
	@RequestMapping(value = "/checkoutSuccess.ca", method = RequestMethod.GET)
	public String checkoutSuccess(Locale locale, Model model) {
		
		
		return "payment/checkoutSuccess";
	}
	
	@RequestMapping(value = "/buyList.ca", method = RequestMethod.GET)
	public String buyList(Locale locale, Model model) {
		
		
		return "payment/buyList";
	}
	
}
