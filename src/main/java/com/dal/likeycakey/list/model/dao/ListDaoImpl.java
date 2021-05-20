package com.dal.likeycakey.list.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dal.likeycakey.detailView.model.vo.ProductBoard;
import com.dal.likeycakey.detailView.model.vo.ProductReview;
import com.dal.likeycakey.list.model.vo.FilterList;

@Repository("listDao")
public class ListDaoImpl implements ListDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getCakeCount(String inputsearch) throws Exception {
		return sqlSession.selectOne("productBoard.getCakeCount", inputsearch);
	}
	
	@Override
	public int getCakeCount(FilterList filterlist) throws Exception {
		return sqlSession.selectOne("productBoard.getCakeCountwf", filterlist);
	}
	
	@Override
	public int getVendorCakeCount(String inputvendor) throws Exception {
		return sqlSession.selectOne("productBoard.getVendorCakeCount", inputvendor);
	}
	
	@Override
	public int getVendorReviewCount(String inputvendor) throws Exception {
		return sqlSession.selectOne("productBoard.getVendorReviewCount", inputvendor);
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(String inputsearch, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeList", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeList(FilterList filterlist, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwf", filterlist, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectVendorCakeList(String inputvendor, int pagecake_current, int limitcake){
		int offset = (pagecake_current - 1) * limitcake;
		RowBounds rows = new RowBounds(offset, limitcake);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectVendorCakeList", inputvendor, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder1(String inputsearch, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwo1", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder2(String inputsearch, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwo2", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder3(String inputsearch, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwo3", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder4(String inputsearch, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwo4", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductBoard> selectCakeListwithOrder5(String inputsearch, int currentPage, int limit){
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<ProductBoard>(sqlSession.selectList("productBoard.selectCakeListwo5", inputsearch, rows));
	}
	
	@Override
	public ArrayList<ProductReview> selectVendorReviewList(String inputvendor, int pagereview_current, int limitreview){
		int offset = (pagereview_current - 1) * limitreview;
		RowBounds rows = new RowBounds(offset, limitreview);
		return new ArrayList<ProductReview>(sqlSession.selectList("productReview.selectVendorReviewList", inputvendor, rows));
	}
	
	@Override
	public String selectLocationList(String id) {
		return sqlSession.selectOne("Member.selectBizAddress", id);
	}
	
	@Override
	public String selectVendorLocationList(String inputvendor) {
		return sqlSession.selectOne("Member.selectBizAddress", inputvendor);
	}
	
	@Override
	public String selectReviewImgList(String id) {
		return sqlSession.selectOne("Member.selectReviewImgList", id);
	}
	
	@Override
	public String selectReviewCakeList(int pbNum) {
		return sqlSession.selectOne("productBoard.selectReviewCakeList", pbNum);
	}
	
	@Override
	   public String selectVendorImg(String inputvendor) {
	      return sqlSession.selectOne("Member.selectVendorImg", inputvendor);
	   }
}
