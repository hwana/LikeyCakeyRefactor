package com.dal.likeycakey.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
// @Controller 를 사용하기 위한 import
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.member.model.service.MemberService;
import com.dal.likeycakey.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	/*@RequestMapping(value="memberJoin.ca", method=RequestMethod.POST)
	// ModelAndView : 데이터를 전송할 수 있는 리턴 타입, String : 단순히 페이지만 열어주는 역할
	public ModelAndView memberJoin(Member member, ModelAndView mv) {
		
		
		return mv;
	}*/
	
	// 일반회원 회원가입 페이지로 이동
	@RequestMapping(value="memberJoin.ca", method = RequestMethod.POST)
	public ModelAndView insertJoin(Member m, ModelAndView mv) {
		try {
			memberService.insertMember(m);
			System.out.println("일반회원 가입 성공");
			mv.setViewName("redirect:home.ca");
		} 
		
		catch (Exception e) {
			System.out.println(e);
			System.out.println("회원가입 실패");
			mv.setViewName("redirect:home.ca");
		}
		return mv;
	}
	
	@RequestMapping(value="memberLogin.ca")
	public String onlymovelogin(Model model) {
		return "member/memberLogin";
	}
	
	@RequestMapping(value="memberMypage.ca")
	public String onlymovemypage(Model model) {
		return "member/memberMypage";
	}
	
	@RequestMapping(value = "m_home_qna.ca")
	public String onlymovehomeq(Model model) {
		return "member/m_home_qna";
	}
	
	@RequestMapping(value = "m_product_qna.ca")
	public String onlymovepq(Model model) {
		return "member/m_product_qna";
	}
	
	@RequestMapping(value = "m_like_list.ca")
	public String onlymovelikelist(Model model) {
		return "member/m_like_list";
	}
	
	@RequestMapping(value = "m_my_postscript.ca")
	public String onlymovepostscript(Model model) {
		return "member/m_my_postscript";
	}

}
