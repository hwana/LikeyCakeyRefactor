package com.dal.likeycakey.biz.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.biz.model.service.BizService;
import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
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
	
	@RequestMapping(value = "loginCheck1.ca", method = RequestMethod.POST)
	public ModelAndView loginCheck1(
			HttpSession session,
			Member member,
			ModelAndView mv) {
		
		session.setAttribute("member", bizService.loginCheck(member.getId(), member.getPasswd()));
		mv.setViewName("redirect:home.ca");
		return mv;
	}
	
	@RequestMapping(value = "loginCheck2.ca", method = RequestMethod.POST)
	public ModelAndView loginCheck2(
			HttpSession session,
			Member member,
			ModelAndView mv){
		
		session.setAttribute("member", bizService.loginCheck(member.getId(), member.getPasswd()));
		mv.setViewName("redirect:home.ca");
		return mv;
	}
	
	@RequestMapping(value="logout.ca", method=RequestMethod.GET)
	public ModelAndView memberLogout(HttpSession session, ModelAndView mv) {
	
		if(session.getAttribute("member") != null){
			session.invalidate();
	    }      mv.setViewName("home");
	    
	    return mv;
	}
	
	//아이디 중복검사
	@RequestMapping(value = "dupid.ca", method = RequestMethod.POST)
	public void dupid(ModelAndView mv,
			@RequestParam("id") String id,
			HttpServletResponse response) throws IOException {			
		
		PrintWriter out = response.getWriter();
		int result = bizService.dupid(id);
		if (result > 0) out.print("no");
		else out.print("ok");
		out.flush();
		out.close();
	}
		
	//사업자 회원가입 페이지로 간다
	@RequestMapping(value = "bizJoin.ca", method = RequestMethod.GET)
	public String bizJoin() {
		
		
		return "biz/bizJoin";
	}
	
	// 회원가입한 멤버 등록
	@RequestMapping(value="bizInsert.ca", method=RequestMethod.POST)
	public ModelAndView bizInsert(Member m,
			@RequestParam("bizName") String bizName,
			@RequestParam("bizPn") String bizPn,
			@RequestParam("bizNum") String bizNum,
			@RequestParam("bizDelivery") int bizDelivery,
			@RequestParam("masterName") String masterName,
			 ModelAndView mv) {

		BizMember bm = new BizMember();
		bm.setId(m.getId());
		bm.setBizName(bizName);
		bm.setBizPn(bizPn);
		bm.setBizNum(bizNum);
		bm.setBizDelivery(bizDelivery);
		bm.setMasterName(masterName);
		
		try {
			int result = bizService.insertBiz1(m);
			int result2 = bizService.insertBiz2(bm);
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
	
	//productCakeUpload 페이지에서 등록하기를 누르면 실제로 데이터베이스에 값을 저장
	@RequestMapping(value = "cakeInsert.ca", method = RequestMethod.POST)
	public ModelAndView cakeInsert(
			HttpSession session,
			HttpServletRequest request,
			@RequestParam(value = "file", required=false) MultipartFile file, 
			@RequestParam("inputtag1") String inputtag1,
			@RequestParam("inputtag2") String inputtag2,
			@RequestParam("inputtag3") String inputtag3,
			@RequestParam("inputtag4") String inputtag4,
			@RequestParam("inputtag5") String inputtag5,
			ModelAndView mv,
			ProductBoard productBoard
			) throws IOException {
		
		System.out.println("cakeInsert.ca입니다(배송비 꼭 숫자 넣어주세요!!!!)");
		// 해당 컨테이너의 구동중인 웹 애플리케이션의 루트 경로 알아냄
		String root = request.getSession().getServletContext().getRealPath("resources");
		// 업로드되는 파일이 저장될 폴더명과 경로 연결 처리
		String savePath = root + "\\img\\product";
		System.out.println("이미지가 저장되는 곳은 " + savePath);
		
		if (file != null && !file.isEmpty()) {
			if (!new File(savePath).exists()) {
				new File(savePath).mkdir();
			}

			// 업로도된 파일명을 "년월일시분초.확장자" 로 변경함
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String originFileName = file.getOriginalFilename();
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
					+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

			File renameFile = new File(savePath + "\\" + renameFileName);
			file.transferTo(renameFile);
			productBoard.setpImg(renameFileName.substring(0, renameFileName.lastIndexOf('.')));
		}
		
		//productBoard에 이미지 넣기
		String inputtag = "";
		if(inputtag1 != "") {
			inputtag = inputtag + "#" + inputtag1;
			if(inputtag2 != "") {
				inputtag = inputtag + ", #" + inputtag2;
				if(inputtag3 != "") {
					inputtag = inputtag + ", #" + inputtag3;
					if(inputtag4 != "") {
						inputtag = inputtag + ", #" + inputtag4;
						if(inputtag5 != "") {
							inputtag = inputtag + ", #" + inputtag5;
						}
					}
				}
			}
		}
		
		productBoard.setPbTag(inputtag);
		
		// 상품정보
		System.out.println(" 상품정보 : "+productBoard);
		
		if (bizService.insertProductBoard(productBoard) > 0) {
			System.out.println("프로덕트 케이크 넣기 성공");
			mv.setViewName("biz/productCakeUpload");
		} else {
			System.out.println("프로덕트 케이크 넣기 실패");
			mv.addObject("error", "게시 원글 등록 서비스 실패!");
			mv.setViewName("biz/productCakeUpload");
		}
		return mv;
	}
	
	//커스텀 케이크 등록 페이지
	@RequestMapping(value = "customCakeUpload.ca", method = RequestMethod.GET)
	public String customCakeUpload(HttpSession session) {
		
		
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
