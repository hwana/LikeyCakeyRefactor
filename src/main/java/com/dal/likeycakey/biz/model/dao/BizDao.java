package com.dal.likeycakey.biz.model.dao;



import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.member.model.vo.Member;

public interface BizDao {

	public int insertBiz(Member m) throws Exception;
	public int insertBiz(BizMember bm) throws Exception;
	public int loginCheck(String id, String passwd) throws Exception;
	

}
