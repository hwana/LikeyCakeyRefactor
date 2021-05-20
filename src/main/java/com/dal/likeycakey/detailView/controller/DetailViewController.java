package com.dal.likeycakey.detailView.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dal.likeycakey.detailView.model.service.ProductBoardService;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.detailView.model.vo.ProductOrder;
import com.dal.likeycakey.detailView.model.vo.ProductReview;
import com.dal.likeycakey.member.model.service.MemberService;
import com.dal.likeycakey.member.model.vo.BizWithMember;
import com.dal.likeycakey.member.model.vo.Member;


	// @Component 에서 Controller부분의 기본 설정을 추가한 자동 매핑 어노테이션 
	// @Component의 확장판
	@Controller
	public class DetailViewController {
		
		
		@Autowired
		private ProductBoardService pbService;
		
		@Autowired
		private MemberService memberService;
		
		@RequestMapping(value="detail.ca", method=RequestMethod.GET)
		public ModelAndView detailView(@RequestParam("pbNum") String pbNum, ModelAndView mv) {
			
			ProductBoard productDetail = selectProductDetail(pbNum);
			ArrayList<ProductReview> pReviewList  = pbService.selectReviewList(pbNum);
			
			double addStar = 0;
			for (int i = 0; i < pReviewList.size(); i++) {
				addStar += pReviewList.get(i).getPrStar();
			}
			int averageStar = (int) Math.ceil(addStar/(double)pReviewList.size());
			
			String tagMinus = productDetail.getPbTag().replace("#", "");
			String tag[] = tagMinus.split(",");
			BizWithMember productDetailBiz = selectProductDetailBiz(productDetail.getId());
			
			mv.addObject("productDetail", productDetail)
			.addObject("pbTag", tag)
			.addObject("productDetailBiz", productDetailBiz)
			.addObject("pReviewListSize", pReviewList.size())
			.addObject("averageStar", averageStar)
			.setViewName("detailView/detailView");
			
			return mv;
		}
		
		@RequestMapping(value="reviewList.ca", method=RequestMethod.POST)
		@ResponseBody
		public ArrayList<ProductReview> selectReviewList(@RequestParam("pbNum") String pbNum ,HttpServletResponse response) throws IOException {
			
			ArrayList<ProductReview> pReviewList  = pbService.selectReviewList(pbNum);

			return pReviewList;
		}
		
		// 가게 이름, 가게 홈페이지 주소, 가게 주소, 가게 전화번호
		private BizWithMember selectProductDetailBiz(String id) {
			BizWithMember selectProductDetailBiz = pbService.selectProductDetailBiz(id);
			return selectProductDetailBiz;
		}

		// 소제목, 제목, 리뷰 별점 평균, 리뷰 개수, 소내용, 가격, 태그, 주의사항, 내용, 규격, 사이즈, 예약시 주의사항, 
		private ProductBoard selectProductDetail(String pbNum) {
			ProductBoard selectProductDetail = pbService.selectProductDetail(pbNum);
			return selectProductDetail;
		}
		
		
		// 장바구니 추가 
		@RequestMapping("productAddCart.ca")
		private void productAddCart(@RequestParam("pbNum") int pbNum, 
									@RequestParam("id") String id,
									@RequestParam("bizDelivery") int bizDelivery,
									@RequestParam("poBookDate") String poBookDate,
									@RequestParam("poCnt") int poCnt,
									@RequestParam("poPrice") int poPrice,
									@RequestParam("poText") String poText,
									HttpServletResponse response) throws IOException {
			
		ProductOrder productOrder = new ProductOrder();
		Member member = memberService.selectMemberInfo(id);
		
		try {
			Date bookDate = new SimpleDateFormat("yyyyMMdd").parse(poBookDate);
			productOrder.setPbNum(pbNum);
			productOrder.setId(id);
			productOrder.setPoBizDelivery(bizDelivery);
			productOrder.setPoBookDate(bookDate);
			productOrder.setPoCnt(poCnt);
			productOrder.setPoPrice(poPrice);
			productOrder.setPoText(poText);
			productOrder.setPoRecName(member.getName());
			productOrder.setPoRecCp(member.getPhone());
			productOrder.setPoRecPost(member.getPost());
			productOrder.setPoRecBasicAddr(member.getAddressBasic());
			productOrder.setPoRecDetailAddr(member.getAddressDetail());
		
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
			int result = pbService.insertProductAddCart(productOrder);
			if(result == 1) {
				PrintWriter out = response.getWriter();
				out.print("ok");
			} else {
			}
		}
		
		// 리뷰 댓글 등록, 수정, 삭제
		@RequestMapping("replyHandle.ca")
		public void insertPReviewReply(@RequestParam("pbNum") int pbNum,
									   @RequestParam("prNum") int prNum,
									   @RequestParam(value="prcContent", required=false) String prcContent,
									   @RequestParam("reviewFunction") String rf,
									   HttpServletResponse response ) throws IOException {
			ProductReview productReview = new ProductReview();
			productReview.setPbNum(pbNum);
			productReview.setPrNum(prNum);
			
			int result = 0;
			if(rf.equals("등록")) {
				productReview.setPrcContent(prcContent);
				result = pbService.insertPReviewReply(productReview);
			} else if (rf.equals("수정")) {
				productReview.setPrcContent(prcContent);
				result = pbService.updatePReviewReply(productReview);
			} else {
				result = pbService.delectPReviewReply(productReview);
			}
			
			
			if(result==1) {
				PrintWriter out = response.getWriter();
				out.print("ok");

			} else {
			}
		}
	
		
		@RequestMapping(value="custom.ca", method=RequestMethod.GET)
		public String customDetail(Model model) {
			
			return "detailView/customDetail";
		}
		
	}