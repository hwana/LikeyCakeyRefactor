package com.dal.likeycakey.biz.model.service;

import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.member.model.vo.Member;

public interface BizService {

	public int insertBiz(Member m) throws Exception;
	public int insertBiz2(BizMember bm) throws Exception;
	public Member loginCheck(String id, String passwd);
	public int dupid(String id);
	public int insertProductBoard(ProductBoard productBoard);

}
