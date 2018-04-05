package com.dal.likeycakey.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
// @Controller 를 사용하기 위한 import
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping(value="memberJoin.ca", method = RequestMethod.GET)
	public String onlyMoveJoin(Model model) {
		return "member/memberJoin";
	}
	
	
/*	// 회원가입 시 아이디 중복 확인
	@RequestMapping("idcheck_member.ca")
	public void idCheck(Model model, @RequestParam("id") String id, HttpServletResponse response) throws IOException{
		PrintWriter out = response.getWriter();
		int result = memberService.idCheck(id);
		if(result > 0 )out.print("no");
		else out.print("ok");
		
		out.flush();
		out.close();
	}*/
	
	
	// 일반회원 INSERT 해주는 부분
	@RequestMapping(value="memberInsert.ca", method = RequestMethod.POST)
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
	
	// 마이페이지로 이동시켜주는 컨트롤러
	@RequestMapping(value="memberMypage.ca")
	public String onlymovemypage(Model model) {
		return "member/memberMypage";
	}
	
	
	// 
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
