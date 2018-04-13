package com.dal.likeycakey.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
// @Controller 를 사용하기 위한 import
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// find id & pw page only for move
	@RequestMapping(value = "findIdpw.ca", method= {RequestMethod.GET, RequestMethod.POST})
	public String moveFindid(Model model) {
		return "biz/findIdPw";
	}
	
	// find id & pw
	@ResponseBody
	@RequestMapping(value = "findingId.ca" , method = RequestMethod.POST)
	public void findingId(ModelAndView mv, HttpSession session, Member member, HttpServletResponse response)throws Exception {
		PrintWriter out = response.getWriter();
		//데이터베이스에 저장된 아이디와 비밀번호를 입력된 아이디와 비밀번호를 비교하여 결과값을 result에 저장
		member = memberService.findId(member.getId(),member.getPasswd()); 
		
		
	}
	
	
	//아이디 중복검사
		@RequestMapping(value = "mdupid.ca", method = RequestMethod.POST)
		public void dupid(ModelAndView mv,
				@RequestParam("id") String id,
				HttpServletResponse response) throws IOException {			
			
			PrintWriter out = response.getWriter();
			int result = memberService.mdupid(id);
			if (result > 0) out.print("no");
			else out.print("ok");
			out.flush();
			out.close();
		}
    
	
	
	// 일반회원 INSERT 해주는 부분
	@RequestMapping(value="memberInsert.ca", method = RequestMethod.POST)
	public ModelAndView insertJoin(Member m, ModelAndView mv, @RequestParam(value = "file", required=false) MultipartFile file, 
			HttpServletRequest request) {
		try {
			// 해당 컨테이너의 구동중인 웹 애플리케이션의 루트 경로 알아냄
			String root = request.getSession().getServletContext().getRealPath("resources");
			// 업로드되는 파일이 저장될 폴더명과 경로 연결 처리
			String savePath = root + "\\img\\member";
			System.out.println("이미지가 저장되는 곳은 " + savePath);
			
			if (file != null && !file.isEmpty()) {
				if (!new File(savePath).exists()) {
					new File(savePath).mkdir();
				}
				String originFileName = file.getOriginalFilename();
				File fileupload = new File(savePath + "\\" + originFileName);
				file.transferTo(fileupload);
				m.setPhoto(originFileName.substring(0, originFileName.lastIndexOf('.')));
			}
			memberService.insertMember(m);
			System.out.println("일반회원 가입 성공");
			int result = memberService.insertMember(m);
			mv.setViewName("redirect:home.ca");
			System.out.println("일반회원 : 등록성공");
		} catch(Exception e) {
			mv.setViewName("redirect:home.ca");
			System.out.println(e);
			System.out.println("일반회원 : 등록실패");
		}
		return mv;
	}
	
	// 로그인 체크
	@RequestMapping(value = "forLogin.ca", method = RequestMethod.POST)
	public void forLogin(ModelAndView mv, HttpSession session, Member member, HttpServletResponse response) {
		try {
			PrintWriter out = response.getWriter();
			//데이터베이스에 저장된 아이디와 비밀번호를 입력된 아이디와 비밀번호를 비교하여 결과값을 result에 저장
			member = memberService.forLogin(member.getId(),member.getPasswd()); 
			//입력된 아이디를 세션에 저장
			session.setAttribute("member", member);
			//결과가 0보다 크면 ok출력				
			int result = 0;
			if (member != null) {
					result = 1;
			} 	
			if(result > 0 ) {
				out.print("ok");
			} else {
				out.print("no");
			}
				out.flush();
				out.close();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
	
	@RequestMapping(value = "memberBuylist.ca")
	public String onlymovebuylist(Model model) {
		return "member/memberBuylist";
	}

}
