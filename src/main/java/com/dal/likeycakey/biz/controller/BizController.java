package com.dal.likeycakey.biz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.biz.model.service.BizService;
import com.dal.likeycakey.member.model.vo.Member;

@Controller
public class BizController {

	@Autowired
	private BizService bizService; //= new BizServiceImpl();
	
	//사업자 로그인
	@RequestMapping(value = "bizLogin.ca", method = RequestMethod.GET)
	public String bizLogin() {

		return "biz/bizLogin";
	}
	
	//사업자 회원가입 페이지로 간다
	@RequestMapping(value = "bizJoin.ca", method = RequestMethod.GET)
	public String bizJoin() {
		
		
		return "biz/bizJoin";
	}
	
	// 회원가입한 멤버 등록
	@RequestMapping(value="bizInsert.ca")
	public ModelAndView bizInsert(Member member, ModelAndView mv) {

		try {
			bizService.insertBiz(member);
			 mv.setViewName("redirect:home.ca");
			 System.out.println("비즈멤버등록성공");
		} catch (Exception e) {
			mv.setViewName("redirect:home.ca");
			System.out.println("비즈멤버등록실패");
		}
		return mv;
	}
	
	//사업자 회원정보, 매장정보 수정
	@RequestMapping(value = "bizMypageModify.ca", method = RequestMethod.GET)
	public String bizMypageModify() {
		
		
		return "biz/bizMypageModify";
	}
	
	//등록된 케이크가 하나도 없는 상태에서 케이크 등록하는 페이지
	@RequestMapping(value = "nocakeUpload.ca", method = RequestMethod.GET)
	public String nocakeUpload() {
		
		
		return "biz/nocakeUpload";
	}
	

	//등록한 케이크가 있는 상태에서 케이크 등록하는 페이지
	@RequestMapping(value = "yescakeUpload.ca", method = RequestMethod.GET)
	public String yescakeUpload() {
		
		
		return "biz/yescakeUpload";
	}
	
	//완제품 케이크 등록 페이지
	@RequestMapping(value = "productCakeUpload.ca", method = RequestMethod.GET)
	public String productCakeUpload() {
		
		
		return "biz/productCakeUpload";
	}
	
	//커스텀 케이크 등록 페이지
	@RequestMapping(value = "customCakeUpload.ca", method = RequestMethod.GET)
	public String customCakeUpload() {
		
		
		return "biz/customCakeUpload";
	}
	
	//케이크 등록하기 버튼 클릭 후 완제품케이크를 등록할건지 커스텀 케이크를 등록할건지 선택하는 페이지
	@RequestMapping(value = "pcSelect.ca", method = RequestMethod.GET)
	public String pcSelect() {
		
		
		return "biz/pcSelect";
	}
	
	
	//사업자에게 들어온 문의글 모아보는 페이지
	@RequestMapping(value = "bizQNA.ca", method = RequestMethod.GET)
	public String bizQNA() {
		
		
		return "biz/bizQNA";
	}
	
	//"등록이 완료되었습니다"페이지
	@RequestMapping(value = "uploadComplete.ca", method = RequestMethod.GET)
	public String uploadOK() {
		
		
		return "biz/uploadComplete";
	}
	
	//사업자 아이디 패스워드 찾는 페이지
	@RequestMapping(value = "findIdPw.ca", method = RequestMethod.GET)
	public String findIdPw() {
		
		
		return "biz/findIdPw";
	}
	
	
}
