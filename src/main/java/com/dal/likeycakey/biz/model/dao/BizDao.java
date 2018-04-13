package com.dal.likeycakey.biz.model.dao;



import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.CustomBoard;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.member.model.vo.Member;

public interface BizDao {
	public int updateMypage(Member m) throws Exception;
	public int updateMypage2(BizMember bm) throws Exception;
	public int insertBiz1(Member member) throws Exception;
	public int insertBiz2(BizMember bizMember) throws Exception;
	public int selectMember(String id);
	public int insertProductBoard(ProductBoard productBoard) ;
	public Member loginCheck(String id, String passwd) throws Exception;
	public int customInsert(CustomBoard customboard) throws Exception;
	public String getBiz(BizMember bm);

}
