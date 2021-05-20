package com.dal.likeycakey.biz.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.dal.likeycakey.biz.model.vo.BizMember;
import com.dal.likeycakey.detailView.model.vo.CustomBoard;
import com.dal.likeycakey.detailView.model.vo.CustomCream;
import com.dal.likeycakey.detailView.model.vo.CustomSheet;
import com.dal.likeycakey.detailView.model.vo.CustomSize;
import com.dal.likeycakey.detailView.model.vo.CustomTopping;
import com.dal.likeycakey.detailView.model.vo.ProductBoard;

import com.dal.likeycakey.member.model.vo.Member;




@Repository("bizDao")
public class BizDaoImpl implements BizDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertBiz1(Member m) throws Exception {
		int result = sqlSession.insert("Member.insertMember", m);
		return result;

	}
	
	@Override
	public int insertBiz2(BizMember bm) throws Exception {
		int result2 = sqlSession.insert("bizMember.insertMember", bm);
		return result2;
	}
	
	@Override

	public Member loginCheck(String id, String passwd) throws Exception {

		return sqlSession.selectOne("Member.loginCheck", new Member(id, passwd));

	}
	
	@Override
	public int selectMember(String id) {
		return sqlSession.selectOne("Member.dupid", id);
	}
	
	@Override
	public int insertProductBoard(ProductBoard productBoard)  {
		return sqlSession.insert("productBoard.insertProductBoard", productBoard);
	}

	@Override
	public int updateMypage(Member m) throws Exception {
		int result = sqlSession.update("Member.updateMypage", m);
		return result;
	}
	
	@Override
	public int updateMypage2(BizMember bm) throws Exception {
		int result = sqlSession.update("bizMember.updateMypage", bm);
		return result;
	}

	@Override
	public int customBoardInsert(CustomBoard customboard) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("customBoard.insertCustomBoard",customboard);
	}

	@Override
	public String getBiz(BizMember bm) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bizMember.selectBiz", bm);
	}

	@Override
	public int customCreamInsert(CustomCream customcream) {
		// TODO Auto-generated method stub
		return sqlSession.insert("customBoard.insertCustomCream",customcream);
	}


	@Override
	public int customSheetInsert(CustomSheet customsheet) {
		// TODO Auto-generated method stub
		return sqlSession.insert("customBoard.insertCustomSheet",customsheet);
	}
	


	@Override
	public int customToppingInsert(CustomTopping customtopping) {
		// TODO Auto-generated method stub
		return sqlSession.insert("customBoard.insertCustomTopping",customtopping);
	}

	@Override
	public int customSizeInsert(CustomSize customsize) {
		// TODO Auto-generated method stub
		return sqlSession.insert("customBoard.insertCustomSize",customsize);
	}
}
