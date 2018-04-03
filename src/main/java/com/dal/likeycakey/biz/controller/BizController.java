package com.dal.likeycakey.biz.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.biz.model.service.BizService;
import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.member.model.vo.Member;

@Controller
public class BizController {

	@Autowired
	private BizService bizService;

	// 사업자 로그인 상세페이지 이동
	@RequestMapping(value = "bizLogin.ca", method = RequestMethod.GET)
	public String bizLogin() {

		return "biz/bizLogin";
	}

	// 로그인 체크
	
	@RequestMapping(value = "loginCheck1.ca")
	public void loginCheck(HttpSession session, Member m, HttpServletResponse response) {
		
		int result;
		try {
			PrintWriter out = response.getWriter();
			result = bizService.loginCheck(m.getId(), m.getPasswd());
			if (result > 0)
				out.append("ok");
			else
				out.append("no");

			out.flush();
			out.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 로그아웃
	@RequestMapping(value = "logout.ca", method = RequestMethod.GET)
	public ModelAndView memberLogout(HttpSession session, ModelAndView mv) {

		if (session.getAttribute("member") != null) {
			session.invalidate();
		}
		mv.setViewName("home");

		return mv;
	}

	// 사업자 회원가입 상세페이지 이동
	@RequestMapping(value = "bizJoin.ca", method = RequestMethod.GET)
	public String bizJoin() {

		return "biz/bizJoin";
	}

	// 사업자 회원가입 insert
	@RequestMapping(value = "bizInsert.ca", method = RequestMethod.POST)
	public ModelAndView bizInsert(Member m, @RequestParam("bizName") String bizName,
			@RequestParam("bizPn") String bizPn, @RequestParam("bizNum") String bizNum,
			@RequestParam("bizDelivery") int bizDelivery, @RequestParam("masterName") String masterName,
			ModelAndView mv) {
		BizMember bm = new BizMember();
		bm.setId(m.getId());
		bm.setBizName(bizName);
		bm.setBizPn(bizPn);
		bm.setBizNum(bizNum);
		bm.setBizDelivery(bizDelivery);
		bm.setMasterName(masterName);

		try {
			int result = bizService.insertBiz(m);
			int result2 = bizService.insertBiz(bm);
			System.out.println("비즈 등록 성공");
			mv.setViewName("redirect:home.ca");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("비즈 등록 실패");
			mv.setViewName("redirect:home.ca");
		}
		return mv;
	}

	// 사업자 회원정보, 매장정보 수정
	@RequestMapping(value = "bizMypageModify.ca", method = RequestMethod.GET)
	public String bizMypageModify() {

		return "biz/bizMypageModify";
	}

	// 등록된 케이크가 하나도 없는 상태에서 케이크 등록하는 페이지
	@RequestMapping(value = "nocakeUpload.ca", method = RequestMethod.GET)
	public String nocakeUpload() {

		return "biz/nocakeUpload";
	}

	// 등록한 케이크가 있는 상태에서 케이크 등록하는 페이지
	@RequestMapping(value = "yescakeUpload.ca", method = RequestMethod.GET)
	public String yescakeUpload() {

		return "biz/yescakeUpload";
	}

	// 완제품 케이크 등록 페이지
	@RequestMapping(value = "productCakeUpload.ca", method = RequestMethod.GET)
	public String productCakeUpload() {

		return "biz/productCakeUpload";
	}

	// 커스텀 케이크 등록 페이지
	@RequestMapping(value = "customCakeUpload.ca", method = RequestMethod.GET)
	public String customCakeUpload() {

		return "biz/customCakeUpload";
	}

	// 케이크 등록하기 버튼 클릭 후 완제품케이크를 등록할건지 커스텀 케이크를 등록할건지 선택하는 페이지
	@RequestMapping(value = "pcSelect.ca", method = RequestMethod.GET)
	public String pcSelect() {

		return "biz/pcSelect";
	}

	// 사업자에게 들어온 문의글 모아보는 페이지
	@RequestMapping(value = "bizQNA.ca", method = RequestMethod.GET)
	public String bizQNA() {

		return "biz/bizQNA";
	}

	// "등록이 완료되었습니다"페이지
	@RequestMapping(value = "uploadComplete.ca", method = RequestMethod.GET)
	public String uploadOK() {

		return "biz/uploadComplete";
	}

	// 사업자 아이디 패스워드 찾는 페이지
	@RequestMapping(value = "findIdPw.ca", method = RequestMethod.GET)
	public String findIdPw() {

		return "biz/findIdPw";
	}

}
