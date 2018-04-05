package com.dal.likeycakey.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {
	@RequestMapping(value = "/notice.ca")
	public String noticeMain(Model model) {
		return "notice/notice_main";
	}
}
