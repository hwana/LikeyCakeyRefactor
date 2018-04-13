package com.dal.likeycakey.payment.controller;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.payment.model.service.PaymentService;
import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.payment.model.vo.Payment;


/**
 * Handles requests for the application home page.
 */
@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	/****************************************************************************************************************** 1_1. 카트 리스트 셀렉트*/
	@RequestMapping(value = "/cartList.ca", method = RequestMethod.GET)
	public ModelAndView cartList(Member m, HttpSession session,
			ModelAndView mv) {
		String m_id = ((Member)session.getAttribute("member")).getId();
		
		System.out.println("cartList mapping도착 : m_id="+m_id);
		/*String m_id = "dodo123";*/
		try {
			
			ArrayList<Payment> list = paymentService.cartselectList(m_id);

			System.out.println("adminMemberList : list.size=" + list.size());
			if (list != null && list.size() > 0) {
				mv.addObject("list", list).setViewName("payment/cart");
			} else {
				System.out.println("cartList : list가 안 들고 와짐");
				mv.addObject("error", "cartList : 게시글 전체 조회 실패");
				mv.setViewName("payment/cart");
			}

		} catch (Exception e) {

			System.out.println("cartList에서 에러남");
			mv.addObject("error", "카트 불러오기 실패");

			mv.setViewName("payment/cart");
		}

		return mv;
	}
	//********************************************************************************************cartList.ca end
	
	/********************************************************************************************* 1_2. 카트 수량 수정 */
	@RequestMapping(value = "/cartUpdate.ca", method = RequestMethod.POST)
	public ModelAndView cartUpdate(ModelAndView mv, @RequestParam("poNumber") int poNumber,
			@RequestParam("poCount") int poCount, @RequestParam("pbPrice") int pbPrice,
			HttpServletResponse response) {
		System.out.println("cartUpdate mapping도착");

		try {
			PrintWriter out = response.getWriter();
			Payment payment = new Payment();
			payment.setPoNum(poNumber);
			payment.setPoCnt(poCount);
			payment.setPbPrice(pbPrice);
			payment.setPoPrice(pbPrice*poCount);
			
			System.out.println("poNumber="+payment.getPoNum() + ", poCount= " + payment.getPoCnt() +", poPrice="+payment.getPoPrice());
			
			int result = paymentService.updateCart(payment);// 멤버 업데이트 하고z
			
			System.out.println("수량 업데이트 성공: result=" + result);
			
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
			
			/*
			 * Member member = adminService.selectOne(id);//업데이트 한 멤버만 정보 다시 받아오기
			 */ /* mv.setViewName("redirect:home.do"); */
			mv.setViewName("payment/cart");
		} catch (Exception e) {
			mv.setViewName("payment/cart");
		}

		return mv;

	}//**********************************************************************************************cartUpdate.ca end
	
	/************************************************************************************************** 1_3. 카트 전체 삭제 */
	@RequestMapping(value = "/cartDelete.ca", method = RequestMethod.POST)
	public void cartDelete(HttpServletResponse response, @RequestParam("poNumber") int poNumber ) {

		System.out.println("cartDelete mapping도착");
		try {
			PrintWriter out = response.getWriter();
			int result = paymentService.deleteCart(poNumber);// 멤버 업데이트 하고z
			System.out.println("카트 삭제 성공: result=" + result);
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
		} catch (Exception e) {
		}

	}//***************************************************************************************************cartDelete.ca end
	


	
	/********************************************************************************************************** 1_1. 결제 리스트 셀렉트*/
	@RequestMapping(value = "/checkoutList.ca", method = RequestMethod.GET)
	public ModelAndView checkoutList(Member m, HttpSession session,
			ModelAndView mv) {
		String m_id = ((Member)session.getAttribute("member")).getId();
		
		System.out.println("checkoutList mapping도착: m_id="+m_id);
		/*String m_id = "dodo123";*/
		try {
			
			ArrayList<Payment> list = paymentService.cartselectList(m_id);
			System.out.println("checkoutList : list.size=" + list.size());
			if (list != null && list.size() > 0) {
				mv.addObject("list", list).setViewName("payment/checkout");
			} else {
				System.out.println("checkoutList : list가 안 들고 와짐");
				mv.addObject("error", "checkoutList : 게시글 전체 조회 실패");
				mv.setViewName("payment/checkout");
			}

		} catch (Exception e) {

			System.out.println("checkoutList에서 에러남");
			mv.addObject("error", "결제 불러오기 실패");

			mv.setViewName("payment/checkout");
		}

		return mv;
	}//*************************************************************************************************************checkoutList.ca end
	
	
	
	/******************************************************************************************************* 1_2. 결제 시작 */
	@RequestMapping(value = "/payment.ca", method = RequestMethod.POST)
	public ModelAndView payment(ModelAndView mv, 
			@RequestParam("imp_uid") String imp_uid,
			@RequestParam("totalPrice") int totalPrice, 
			@RequestParam("method") String method,
			@RequestParam("recName") String recName,
			@RequestParam("recCP") String recCP,
			@RequestParam("recPost") String recPost,
			@RequestParam("recBasicAddr") String recBasicAddr,
			@RequestParam("recDetailAddr") String recDetailAddr,
			@RequestParam("recMemo") String recMemo,
			HttpSession session,
			HttpServletResponse response) {
		System.out.println("payment mapping도착");

		try {
			
			String m_id = ((Member)session.getAttribute("member")).getId();
			PrintWriter out = response.getWriter();
			Payment payment = new Payment();
			payment.setM_id(m_id);
			payment.setImp_uid(imp_uid);
			/*payment.setPay_date(date);*/
			payment.setPay_price(totalPrice);
			payment.setPay_method(method);
			
			payment.setRecName(recName);
			payment.setRecCP(recCP);
			payment.setRecPost(recPost);
			payment.setRecBasicAddr(recBasicAddr);
			payment.setRecDetailAddr(recDetailAddr);
			payment.setRecMemo(recMemo);
			
			
			//1. 결제 테이블에 삽입하기
			
			int result = paymentService.insertPayment(payment);// 결제 테이블에 삽입하고
			System.out.println("결제 테이블 삽입 성공: result=" + result);
			
			
			//2. 주문 테이블 정보 업데이트 하기
			result = paymentService.updateProductOrder(payment);			
			// 주문 테이블, 상태를 결제 완료로!!, 결제 넘버는 최종 결제 넘버로!!, 거기에다가 그그그 배송 메모랑 그런것도 해야함..그러네.. 업데이트 하기~~
			System.out.println("주문 테이블 업데이트 성공: result=" + result);
			
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
			
			/*
			 * Member member = adminService.selectOne(id);//업데이트 한 멤버만 정보 다시 받아오기
			 */ /* mv.setViewName("redirect:home.do"); */
			mv.setViewName("payment/cart");
		} catch (Exception e) {
			mv.setViewName("payment/cart");
		}

		return mv;

	}//*************************************************************************************************payment.ca end
	
	
	
	/*************************************************************************************결제 성공 페이지 셀렉트 해오는 메소드*/
	@RequestMapping(value = "/checkoutSuccess.ca", method = RequestMethod.GET)
	public ModelAndView checkoutSuccess(ModelAndView mv, HttpSession session) {
		String m_id = ((Member)session.getAttribute("member")).getId();
		
		System.out.println("checkoutList mapping도착: m_id="+m_id);
		/*String m_id = "dodo123";*/
		try {
			
			Payment payment = paymentService.paymentSuccess(m_id);
			if (payment != null) {
				mv.addObject("payment", payment).setViewName("payment/checkoutSuccess");
			} else {
				mv.addObject("error", "checkoutSuccess : 결제 성공 조회 실패");
				mv.setViewName("payment/checkoutSuccess");
			}

		} catch (Exception e) {

			System.out.println("checkoutSuccess에서 에러남");
			mv.addObject("error", "결제 성공 창 불러오기 실패");

			mv.setViewName("payment/checkoutSuccess");
		}

		return mv;
		
	}//*******************************************************************************************checkoutSuccess.ca end
	
	
	/*********************************************************************************************** 1_1. 구매내역 리스트 셀렉트 */
	@RequestMapping(value = "/buyList.ca", method = RequestMethod.GET)
	public ModelAndView buyList(@RequestParam(value = "page", required = false) Integer page, HttpSession session,
			ModelAndView mv) {

		System.out.println("buyList mapping도착");
		String m_id = ((Member)session.getAttribute("member")).getId();

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
			int listCount = paymentService.getBuyListCount(m_id);

			System.out.println("buyList : listCount =" + listCount);

			ArrayList<Payment> buyList = paymentService.selectBuyList(currentPage, limit, m_id);

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
			System.out.println("buyList : list.size=" + buyList.size());
			if (buyList != null && buyList.size() > 0) {

				mv.addObject("buyList", buyList).addObject("currentPage", currentPage).addObject("maxPage", maxPage)
						.addObject("startPage", startPage).addObject("endPage", endPage)
						.addObject("listCount", listCount).setViewName("payment/buyList");
			} else {
				System.out.println("buyList : buyList가 안 들고 와짐");
				mv.addObject("error", "buyList : 게시글 전체 조회 실패");
				mv.setViewName("payment/buyList");
			}

		} catch (Exception e) {

			System.out.println("buyList에서 에러남");
			mv.addObject("error", "게시글 전체 조회 실패");

			mv.setViewName("payment/buyList");
		}

		return mv;
	}//****************************************************************************************************buyList.ca end
	
	/***************************************************************************************************케이크 문구 변경 창 띄우기*/
	@RequestMapping("poTextUpdatetView.ca")
	public String poTextUpdateView(Model model) {
		return "payment/poTextUpdate";
	}//***************************************************************************************************케이크 문구 변경 창 띄우기 end
	
	/***********************************************************************************************************배송지 주소 변경 창 띄우기*/
	@RequestMapping("recPostUpdateView.ca")
	public String recPostUpdateView(Model model) {
		return "payment/recPostUpdate";
	}//***************************************************************************************************배송지 주소 변경 창 띄우기 end
	
	
	/********************************************************************************************* 1_2. 카트 수량 수정 */
	@RequestMapping(value = "/poTextUpdate.ca", method = RequestMethod.POST)
	public void poTextUpdate(
			@RequestParam("poNumber") int poNumber,
			@RequestParam("poCount") int poCount, 
			@RequestParam("pbPrice") int pbPrice,
			HttpServletResponse response) {
		System.out.println("poTextUpdate mapping도착");

		try {
			PrintWriter out = response.getWriter();
			Payment payment = new Payment();
			payment.setPoNum(poNumber);
			payment.setPoCnt(poCount);
			payment.setPbPrice(pbPrice);
			payment.setPoPrice(pbPrice*poCount);
			
			System.out.println("poNumber="+payment.getPoNum() + ", poCount= " + payment.getPoCnt() +", poPrice="+payment.getPoPrice());
			
			int result = paymentService.updateCart(payment);// 멤버 업데이트 하고z
			
			System.out.println("수량 업데이트 성공: result=" + result);
			
			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
			
		} catch (Exception e) {
			System.out.println("poTextUpdate 실패");
		}


	}//**********************************************************************************************cartUpdate.ca end
	


}//PaymentController end
