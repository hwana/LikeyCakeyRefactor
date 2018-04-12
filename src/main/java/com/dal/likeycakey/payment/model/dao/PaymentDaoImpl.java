package com.dal.likeycakey.payment.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import com.dal.likeycakey.admin.model.dao.AdminDao;
import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.payment.model.vo.Payment;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("paymentDao")
public class PaymentDaoImpl implements PaymentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Payment> cartselectList(String id) throws Exception {
		System.out.println("paymentDao: cartselectList 도착");
		return new ArrayList<Payment>(sqlSession.selectList("PaymentMapper.cartselectList", id));
	}

	@Override
	public int updateCart(Payment payment) throws Exception {
		System.out.println("paymentDao: updateCart 도착");
		return sqlSession.update("PaymentMapper.updateCart", payment);		
	}

	@Override
	public int deleteCart(int poNumber) throws Exception {
		System.out.println("paymentDao: deleteCart 도착");
		return sqlSession.delete("PaymentMapper.deleteCart",poNumber);
	}

	@Override
	public int insertPayment(Payment payment) throws Exception {
		System.out.println("paymentDao: insertPayment 도착");
		return sqlSession.insert("PaymentMapper.insertPayment",payment);
	}

	@Override
	public int updateProductOrder(Payment payment) throws Exception {
		System.out.println("paymentDao: updateProductOrder 도착");
		return sqlSession.update("PaymentMapper.updateProductOrder",payment);
	}

	@Override
	public Payment paymentSuccess(String m_id) throws Exception {
		System.out.println("paymentDao: paymentSuccess 도착");
		return sqlSession.selectOne("PaymentMapper.paymentSuccess",m_id);
	}
	
/*	@Override
	public int getListCount() throws Exception{
		System.out.println("adminDao.getListCount 도착");
		return sqlSession.selectOne("AdminMapper.getListCount");
		
	}

	@Override
	public ArrayList<Member> selectList(int currentPage, int limit) throws Exception{
		System.out.println("adminDao.selectList 도착");
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<Member>(sqlSession.selectList("AdminMapper.selectList", null, rows));
	}
	
	@Override
	public Member selectOne(String id) throws Exception{
		System.out.println("adminDao.selectOne 도착");
		return (Member)(sqlSession.selectOne("AdminMapper.selectOne", id));
	}
	
	@Override
	public int updateMember(Member m) throws Exception{
		return sqlSession.update("AdminMapper.updateMember",m);		
		
	}
	
	@Override
	public int deleteMember(String id) throws Exception{
		
		return sqlSession.delete("AdminMapper.deleteMember",id);
	}

	@Override
	public int deleteTotalMember() throws Exception{
		// TODO Auto-generated method stub
		return sqlSession.delete("AdminMapper.deleteTotalMember");
	}*/
	

}