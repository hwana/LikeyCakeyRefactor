package com.dal.likeycakey.biz.model.service;



import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.CustomBoard;
import com.dal.likeycakey.detailView.model.vo.CustomCream;
import com.dal.likeycakey.detailView.model.vo.CustomSheet;
import com.dal.likeycakey.detailView.model.vo.CustomSize;
import com.dal.likeycakey.detailView.model.vo.CustomTopping;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.member.model.vo.Member;

public interface BizService {

	public int insertBiz(Member m) throws Exception;
	public int insertBiz2(BizMember bm) throws Exception;
	
	public Member loginCheck(String id, String passwd) throws Exception;
	public int dupid(String id);
	
	public int insertProductBoard(ProductBoard productBoard);
	
    public int bizModify(Member m) throws Exception;
    public int bizModify2(BizMember bm) throws Exception;
    public String getBiz(BizMember bm);
    
	public int customBoardInsert(CustomBoard customboard) throws Exception;
	public int customCreamInsert(CustomCream customcream) throws Exception;
	public int customSheetInsert(CustomSheet customsheet) throws Exception;
	public int customToppingInsert(CustomTopping customtopping) throws Exception;
	public int customSizeInsert(CustomSize customsize) throws Exception;

	
	
	

}
