package com.dal.likeycakey.detailView.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.detailView.model.vo.ProductOrder;
import com.dal.likeycakey.detailView.model.vo.ProductReview;
import com.dal.likeycakey.member.model.vo.BizWithMember;
import com.dal.likeycakey.member.model.vo.MemberLike;

public interface ProductBoardDao {

	public ArrayList<ProductBoard> selectTopList();

	public ProductBoard selectTodaysCake();

	public BizMember selectBizMember(String id);

	public ArrayList<ProductBoard> selectNewArrivalList();

	public String selectBizAddress(String id);

	public ArrayList<ProductBoard> selectBestSellerList();

	public ArrayList<ProductBoard> selectBestLikeyList();

	public int insertHeartMember(String pbNum, String id);

	public int updateLikeyBoard(String pbNum);

	public ArrayList<MemberLike> selectMemberLikeList(String id);

	public int updateSubtractLikeyBoard(String pbNum);

	public int deleteHeartMember(String pbNum, String id);

	public ProductBoard selectProductDetail(String pbNum);

	public BizWithMember selectProductDetailBiz(String id);

	public ArrayList<ProductReview> selectReviewList(String pbNum);

	public int insertProductAddCart(ProductOrder productOrder);

	public int updatePReviewReply(ProductReview productReview);

	public int delectPReviewReply(ProductReview productReview);

	public int insertPReviewReply(ProductReview productReview);
	
	

}
