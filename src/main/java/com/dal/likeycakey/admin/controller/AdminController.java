package com.dal.likeycakey.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.admin.model.service.AdminService;
import com.dal.likeycakey.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	/* 1_1. 관리자_멤버 리스트 셀렉트 */
	@RequestMapping(value = "/adminMemberList.ca", method = RequestMethod.GET)
	public ModelAndView adminMemberList(Member m, @RequestParam(value = "page", required = false) Integer page,
			ModelAndView mv) {

		System.out.println("adminmemberList mapping도착");

		try {

			// 페이지 값 처리용
			int currentPage = 1;
			// 한 페이지당 출력할 목록 갯수
			int limit = 10;

			// 전달된 페이지값 추출
			if (page != null)
				currentPage = page;
			
			System.out.println();

			// 전체 목록 갯수와 해당 페이지별 목록을 리턴
			int listCount = adminService.getListCount();

			System.out.println("adminMemberList : listCount =" + listCount);

			ArrayList<Member> list = adminService.selectList(currentPage, limit);

			// 총 페이지수 계산 : 목록이 최소 1개일 때 1page로 처리하기
			// 위해 0.9 더함
			int maxPage = (int) ((double) listCount / limit + 0.9);
			// 현재 페이지에 보여줄 시작 페이지수
			// (1, 11, 21, .......)
			// 현재 페이지가 13page 이면 시작페이지는 11page 가 되어야 함
			int startPage = (((int) ((double) currentPage / limit + 0.9)) - 1) * limit + 1;
			// 만약, 목록 아래에 보여질 페이지 갯수가 10개이면
			// 끝페이지수는 20페이지가 되어야 함
			int endPage = startPage + limit - 1;
			if (maxPage < endPage) {
				endPage = maxPage;
			}
			System.out.println("adminMemberList : list.size=" + list.size());
			if (list != null && list.size() > 0) {

				mv.addObject("list", list).addObject("currentPage", currentPage).addObject("maxPage", maxPage)
						.addObject("startPage", startPage).addObject("endPage", endPage)
						.addObject("listCount", listCount).setViewName("admin/adminMemberList");
			} else {
				System.out.println("adminMemberList : list가 안 들고 와짐");
				mv.addObject("error", "adminMemberList : 게시글 전체 조회 실패");
				mv.setViewName("admin/adminMemberList");
			}

		} catch (Exception e) {

			System.out.println("adminMemberList에서 에러남");
			mv.addObject("error", "게시글 전체 조회 실패");

			mv.setViewName("admin/adminMemberList");
		}

		return mv;
	}

	/* 1_2. 관리자_멤버 한명만!!! 수정 */
	@RequestMapping(value = "/adminMemberUpdate.ca", method = RequestMethod.POST)
	public ModelAndView adminMemberUpdate(ModelAndView mv, @RequestParam("mcode") String mcode,
			@RequestParam("mid") String mid, @RequestParam("mpasswd") String mpasswd,
			@RequestParam("mname") String mname, @RequestParam("memail") String memail,
			@RequestParam("mphone") String mphone, @RequestParam("mstatus") String mstatus,
			@RequestParam("mblackCnt") String mblackCnt, HttpServletResponse response) {

		System.out.println("adminMemberUpdate mapping도착");

		try {
			/*
			 * JSONObject json = new JSONObject(); json.put("mcode", mcode); json.put("mid",
			 * mid);
			 */
			PrintWriter out = response.getWriter();
			System.out.println("print");
			System.out.println(mcode + " " + mid + " " + mpasswd + " " + mname + " " + memail + " " + mphone + " "
					+ mstatus + " " + mblackCnt);
			Member member = new Member(Integer.parseInt(mcode), mid, mpasswd, mname, memail, mphone,
					Integer.parseInt(mstatus), Integer.parseInt(mblackCnt));
			System.out.println("멤버 초기화?");

			int result = adminService.updateMember(member);// 멤버 업데이트 하고z
			System.out.println("멤버 업데이트 성공: result=" + result);
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			/*
			 * Member member = adminService.selectOne(id);//업데이트 한 멤버만 정보 다시 받아오기
			 */ /* mv.setViewName("redirect:home.do"); */
			mv.setViewName("admin/adminMemberList");
		} catch (Exception e) {
			mv.setViewName("admin/adminMemberList");
		}

		return mv;

	}

	/* 1_3. 관리자_멤버 선택 삭제 */
	@RequestMapping(value = "/adminMemberDelete.ca", method = RequestMethod.POST)
	public void adminMemberDelete(@RequestParam("delMembers") String deleteMembers, HttpServletResponse response) {
		System.out.println("adminMemberDelete mapping도착");

		try {
			PrintWriter out = response.getWriter();
			System.out.println("deleteMember="+deleteMembers);
			
			ArrayList<String> delMembers = new ArrayList<String>(Arrays.asList(deleteMembers.split(",")));
			System.out.println("delMembers.size()="+delMembers.size());
			
			int result = 0;
			for (int i = 0; i < delMembers.size(); i++) {
				System.out.println((String) delMembers.get(i));
				result = adminService.deleteMember((String) delMembers.get(i));// 멤버 업데이트 하고z
			}
			System.out.println("멤버 선택 삭제 성공: result=" + result);

			System.out.println(result);
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

		} catch (Exception e) {
			System.out.println("adminMemberDelete에서 에러발생");

		}

	}

	/* 1_4. 관리자_멤버 전체 삭제 */
	@RequestMapping(value = "/adminMemberTotalDelete.ca", method = RequestMethod.POST)
	public void adminMemberTotalDelete(HttpServletResponse response) {

		System.out.println("adminMemberTotalDelete mapping도착");
		try {
			PrintWriter out = response.getWriter();
			int result = adminService.deleteTotalMember();// 멤버 업데이트 하고z
			System.out.println("멤버 업데이트 성공: result=" + result);
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
		} catch (Exception e) {
		}

	}

	/* 2_1. 관리자_사업장 리스트 셀렉트 */
	@RequestMapping(value = "/adminBizList.ca", method = RequestMethod.GET)
	public ModelAndView adminBizList(ModelAndView mv) {

		System.out.println("adminBizList mapping도착");

		try {
			/* bizService.insertBiz(bm); */
			mv.setViewName("redirect:home.do");
		} catch (Exception e) {
			mv.setViewName("admin/adminBizList");
		}

		return mv;

	}

	/* 2_2. 관리자_사업장 수정 */
	@RequestMapping(value = "/adminBizUpdate.ca", method = RequestMethod.GET)
	public ModelAndView adminBizUpdate(Member m, ModelAndView mv) {

		System.out.println("adminBizUpdate mapping도착");
		try {
			/* bizService.insertBiz(bm); */
			mv.setViewName("redirect:home.do");
		} catch (Exception e) {
			mv.setViewName("admin/adminBizList");
		}

		return mv;
	}

	/* 1_3. 관리자_사업장 선택 삭제 */
	@RequestMapping(value = "/adminBizDelete.ca", method = RequestMethod.GET)
	public ModelAndView adminBizDelete(Member m, ModelAndView mv) {

		System.out.println("adminBizDelete mapping도착");
		try {
			/* bizService.insertBiz(bm); */
			mv.setViewName("redirect:home.do");
		} catch (Exception e) {
			mv.setViewName("admin/adminBizList");
		}

		return mv;

	}

}
