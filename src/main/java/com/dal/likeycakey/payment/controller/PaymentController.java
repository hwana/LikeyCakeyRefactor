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
		
		/*String m_id = "dodo123";*/
		try {
			
			ArrayList<Payment> list = paymentService.cartselectList(m_id);


			ArrayList<Payment> coList = paymentService.cartCustomselectList(m_id);
			
			
			if (list != null && list.size() > 0) {
				mv.addObject("list", list).addObject("coList", coList).setViewName("payment/cart");
			} else {
				mv.addObject("error", "cartList : 게시글 전체 조회 실패");
				mv.setViewName("payment/cart");
			}

		} catch (Exception e) {

			mv.addObject("error", "카트 불러오기 실패");

			mv.setViewName("payment/cart");
		}

		return mv;
	}
	//********************************************************************************************cartList.ca end
	
	/********************************************************************************************* 1_2. 카트 수량 수정 */
	@RequestMapping(value = "/cartUpdate.ca", method = RequestMethod.POST)
	public ModelAndView cartUpdate(ModelAndView mv, @RequestParam("poNumber") int poNumber,
			@RequestParam("poCount") int poCount, @RequestParam("pbPrice") int pbPrice, @RequestParam("type") int type,
			HttpServletResponse response) {

		try {
			PrintWriter out = response.getWriter();
			Payment payment = new Payment();
			payment.setPoNum(poNumber);
			payment.setPoCnt(poCount);
			payment.setPbPrice(pbPrice);
			payment.setPoPrice(pbPrice*poCount);
			
			int result=0;
			if(type == 1) {
			 
				result = paymentService.updateCart(payment);// 멤버 업데이트 하고z
			
			}else {
				result = paymentService.updateCustomCart(payment);// 멤버 업데이트 하고z
			}
			

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
	public void cartDelete(HttpServletResponse response, @RequestParam("poNumber") int poNumber, @RequestParam("type") int type ) {

		try {
			PrintWriter out = response.getWriter();
			int result=0;
			if(type==1) {
				result= paymentService.deleteCart(poNumber);// 멤버 업데이트 하고z
			}else {
				result= paymentService.deleteCustomCart(poNumber);// 멤버 업데이트 하고z
			}
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
		
		/*String m_id = "dodo123";*/
		try {
			String next = "mix";
			
			ArrayList<Payment> list = paymentService.cartselectList(m_id);

			ArrayList<Payment> coList = paymentService.cartCustomselectList(m_id);
			
			if (list != null && list.size() > 0) {
				mv.addObject("list", list).addObject("coList", coList).addObject("next", next).setViewName("payment/checkout");
			} else {
				mv.addObject("error", "checkoutList : 게시글 전체 조회 실패");
				mv.setViewName("payment/checkout");
			}

		} catch (Exception e) {

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

			int cnt = paymentService.countProductOrder(payment.getM_id());	
			//2. 주문 테이블 정보 업데이트 하기
			if(cnt>0)
			result = paymentService.updateProductOrder(payment);			
			// 주문 테이블, 상태를 결제 완료로!!, 결제 넘버는 최종 결제 넘버로!!, 거기에다가 그그그 배송 메모랑 그런것도 해야함..그러네.. 업데이트 하기~~

			cnt=paymentService.countCustomOrder(payment.getM_id());	
			//2. 주문 테이블 정보 업데이트 하기
			if(cnt>0)
			result = paymentService.updateCustomOrder(payment);			
			// 주문 테이블, 상태를 결제 완료로!!, 결제 넘버는 최종 결제 넘버로!!, 거기에다가 그그그 배송 메모랑 그런것도 해야함..그러네.. 업데이트 하기~~

			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
		
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

			mv.addObject("error", "결제 성공 창 불러오기 실패");

			mv.setViewName("payment/checkoutSuccess");
		}

		return mv;
		
	}//*******************************************************************************************checkoutSuccess.ca end
	
	
	/*********************************************************************************************** 1_1. 구매내역 리스트 셀렉트 */
	@RequestMapping(value = "/buyList.ca", method = RequestMethod.GET)
	public ModelAndView buyList(@RequestParam(value = "page", required = false) Integer page, HttpSession session,
			ModelAndView mv) {

		String m_id = ((Member)session.getAttribute("member")).getId();

		try {

		
		

			ArrayList<Payment> buyList = paymentService.selectBuyList(m_id);


			ArrayList<Payment> coBuyList = paymentService.selectCustomBuyList(m_id);
			
			if (buyList != null && buyList.size() > 0) {

				mv.addObject("buyList", buyList).addObject("coBuyList", coBuyList).setViewName("payment/buyList");
			} else {
				mv.addObject("error", "buyList : 게시글 전체 조회 실패");
				mv.setViewName("payment/buyList");
			}

		} catch (Exception e) {

			mv.addObject("error", "게시글 전체 조회 실패");

			mv.setViewName("payment/buyList");
		}

		return mv;
	}//****************************************************************************************************buyList.ca end
	
	/***************************************************************************************************케이크 문구 변경 창 띄우기*/
	@RequestMapping("poTextUpdatetView.ca")
	public ModelAndView poTextUpdateView(Model model, @RequestParam("poNum") String poNum, ModelAndView mv) {
		
		mv.addObject("poNum", poNum).setViewName("payment/poTextUpdate");
		return mv;
	
	}//***************************************************************************************************케이크 문구 변경 창 띄우기 end
	
	/***********************************************************************************************************배송지 주소 변경 창 띄우기*/
	@RequestMapping("recPostUpdateView.ca")
	public ModelAndView recPostUpdateView(Model model, @RequestParam("poNum") String poNum, ModelAndView mv) {
		
		mv.addObject("poNum", poNum).setViewName("payment/recPostUpdate");
		return mv;
	}//***************************************************************************************************배송지 주소 변경 창 띄우기 end
	
	
	/********************************************************************************************* 주소지 업데이트 */
	@RequestMapping(value = "/recPostUpdate.ca", method = RequestMethod.POST)
	public void recPostUpdate(
			Payment payment,
			HttpServletResponse response) {

		try {
			PrintWriter out = response.getWriter();


			int result = paymentService.recPostUpdate(payment);// 멤버 업데이트 하고z
			

			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
			
		} catch (Exception e) {
		}


	}//**********************************************************************************************cartUpdate.ca end
	
	/********************************************************************************************* 케이크 문구 업데이트 */
	@RequestMapping(value = "/poTextUpdate.ca", method = RequestMethod.POST)
	public void poTextUpdate(
			@RequestParam("poNum") int poNum,
			@RequestParam("poText") String poText,
			HttpServletResponse response) {

		try {
			PrintWriter out = response.getWriter();

			Payment payment = new Payment();
			payment.setPoNum(poNum);
			payment.setPoText(poText);

			int result = paymentService.poTextUpdate(payment);// 멤버 업데이트 하고z
			

			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
			
		} catch (Exception e) {
		}


	}//**********************************************************************************************cartUpdate.ca end
	
	/********************************************************************************************* 구매 취소 */
	@RequestMapping(value = "/poDelete.ca", method = RequestMethod.POST)
	public void poDelete(
			@RequestParam("poNum") int poNum,
			HttpServletResponse response) {

		try {
			PrintWriter out = response.getWriter();


			int result = paymentService.poDelete(poNum);// 멤버 업데이트 하고z
			

			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
			
			
		} catch (Exception e) {
		}


	}//**********************************************************************************************구매 취소 end
	
	/********************************************************************************************************** 완제품 바로 구매 결제 셀렉트*/
	@RequestMapping(value = "/directCheckoutList.ca", method = RequestMethod.GET)
	public ModelAndView directCheckoutList(Member m, HttpSession session,
			ModelAndView mv) {
		String m_id = ((Member)session.getAttribute("member")).getId();
		
		/*String m_id = "dodo123";*/
		try {
			String next = "directPayment";
			ArrayList<Payment> list = paymentService.directCheckoutList(m_id);
			if (list != null) {
				mv.addObject("list", list).addObject("next", next).setViewName("payment/checkout");
			} else {
				mv.addObject("error", "directCheckoutList : 게시글 전체 조회 실패");
				mv.setViewName("payment/checkout");
			}

		} catch (Exception e) {

			mv.addObject("error", "결제 불러오기 실패");

			mv.setViewName("payment/checkout");
		}

		return mv;
	}//*************************************************************************************************************checkoutList.ca end
	
	/********************************************************************************************************** 커스텀 바로 구매 결제 셀렉트*/
	@RequestMapping(value = "/directCustomCheckoutList.ca", method = RequestMethod.GET)
	public ModelAndView directCustomCheckoutList(Member m, HttpSession session,
			ModelAndView mv) {
		String m_id = ((Member)session.getAttribute("member")).getId();
		
		/*String m_id = "dodo123";*/
		try {
			String next = "directCustomPayment";
			ArrayList<Payment> coList = paymentService.directCustomCheckoutList(m_id);
			if (coList != null) {
				mv.addObject("coList", coList).addObject("next", next).setViewName("payment/checkout");
			} else {
				mv.addObject("error", "directCustomCheckoutList : 게시글 전체 조회 실패");
				mv.setViewName("payment/checkout");
			}

		} catch (Exception e) {

			mv.addObject("error", "결제 불러오기 실패");

			mv.setViewName("payment/checkout");
		}

		return mv;
	}//*************************************************************************************************************checkoutList.ca end
	
	/******************************************************************************************************* 완제품 바로 구매 결제 시작 */
	
	@RequestMapping(value = "/directPayment.ca", method = RequestMethod.POST)
	public ModelAndView directPayment(ModelAndView mv, 
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

			
			//2. 주문 테이블 정보 업데이트 하기
			result = paymentService.updateDirectProductOrder(payment);			
			// 주문 테이블, 상태를 결제 완료로!!, 결제 넘버는 최종 결제 넘버로!!, 거기에다가 그그그 배송 메모랑 그런것도 해야함..그러네.. 업데이트 하기~~

			
			
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

	}//*************************************************************************************************커스텀 바로 구매 결제 end
	
	@RequestMapping(value = "/directCustomPayment.ca", method = RequestMethod.POST)
	public ModelAndView directCustomPayment(ModelAndView mv, 
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

		try {
			
			String m_id = ((Member)session.getAttribute("member")).getId();
			PrintWriter out = response.getWriter();
			Payment payment = new Payment();
			payment.setM_id(m_id);
			payment.setImp_uid(imp_uid);
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

			
			//2. 주문 테이블 정보 업데이트 하기
			result = paymentService.updateDirectCustomOrder(payment);			
			// 주문 테이블, 상태를 결제 완료로!!, 결제 넘버는 최종 결제 넘버로!!, 거기에다가 그그그 배송 메모랑 그런것도 해야함..그러네.. 업데이트 하기~~

			if (result > 0)
				out.print("ok");
			else
				out.print("no");

			out.flush();
			out.close();
		
			mv.setViewName("payment/cart");
		} catch (Exception e) {
			mv.setViewName("payment/cart");
		}

		return mv;

	}//*************************************************************************************************커스텀 바로 구매 결제 end
	


}//PaymentController end
