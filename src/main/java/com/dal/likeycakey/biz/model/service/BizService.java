package com.dal.likeycakey.biz.model.service;



import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.member.model.vo.Member;

public interface BizService {

	public int insertBiz(Member m) throws Exception;
	public int insertBiz(BizMember bm) throws Exception;

}
