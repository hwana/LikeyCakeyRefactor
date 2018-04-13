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

	@Override
	public int getBuyListCount(String m_id) throws Exception {
		System.out.println("paymentDao: getBuyListCount 도착");
		return sqlSession.selectOne("PaymentMapper.getBuyListCount", m_id);
	}

	@Override
	public ArrayList<Payment> selectBuyList(int currentPage, int limit, String m_id) throws Exception {
		System.out.println("paymentDao: selectBuyList 도착");
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList<Payment>(sqlSession.selectList("PaymentMapper.selectBuyList", m_id, rows));
	}


}