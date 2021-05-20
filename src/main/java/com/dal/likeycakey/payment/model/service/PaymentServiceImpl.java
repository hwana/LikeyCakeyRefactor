package com.dal.likeycakey.payment.model.service;

import java.util.ArrayList;


import com.dal.likeycakey.payment.model.dao.PaymentDao;
import com.dal.likeycakey.payment.model.vo.Payment;
import com.dal.likeycakey.member.model.vo.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	PaymentDao paymentDao;

	@Override
	public ArrayList<Payment> cartselectList(String m_id) throws Exception {
		return paymentDao.cartselectList(m_id);
	}
	
	@Override
	public ArrayList<Payment> cartCustomselectList(String m_id) throws Exception {
		return paymentDao.cartCustomselectList(m_id);
	}

	@Override
	public int updateCart(Payment payment) throws Exception {
		return paymentDao.updateCart(payment);
	}
	
	@Override
	public int updateCustomCart(Payment payment) throws Exception {
		return paymentDao.updateCustomCart(payment);
	}

	@Override
	public int deleteCart(int poNumber) throws Exception {
		return paymentDao.deleteCart(poNumber);
	}
	
	@Override
	public int deleteCustomCart(int poNumber) throws Exception {
		return paymentDao.deleteCustomCart(poNumber);
	}

	@Override
	public int insertPayment(Payment payment) throws Exception {
		return paymentDao.insertPayment(payment);
	}

	@Override
	public int updateProductOrder(Payment payment) throws Exception {
		return paymentDao.updateProductOrder(payment);
	}
	
	@Override
	public int updateCustomOrder(Payment payment) throws Exception {
		return paymentDao.updateCustomOrder(payment);
	}

	@Override
	public Payment paymentSuccess(String m_id) throws Exception {
		return paymentDao.paymentSuccess(m_id);
	}

	@Override
	public int getBuyListCount(String m_id) throws Exception {
		return paymentDao.getBuyListCount(m_id);
	}

	@Override
	public ArrayList<Payment> selectBuyList(String m_id) throws Exception {
		return paymentDao.selectBuyList(m_id);
	}
	
	@Override
	public ArrayList<Payment> selectCustomBuyList(String m_id) throws Exception {
		return paymentDao.selectCustomBuyList(m_id);
	}

	@Override
	public int recPostUpdate(Payment payment) throws Exception {
		return paymentDao.recPostUpdate(payment);
	}

	@Override
	public int poTextUpdate(Payment payment) throws Exception {
		return paymentDao.poTextUpdate(payment);
	}

	@Override
	public int poDelete(int poNum) throws Exception {
		return paymentDao.poDelete(poNum);
	}

	@Override
	public ArrayList<Payment> directCheckoutList(String m_id) throws Exception {
		return paymentDao.directCheckoutList(m_id);
	}

	@Override
	public int updateDirectProductOrder(Payment payment) throws Exception {
		return paymentDao.updateDirectProductOrder(payment);
	}

	@Override
	public ArrayList<Payment> directCustomCheckoutList(String m_id) throws Exception {
		return paymentDao.directCustomCheckoutList(m_id);
	}

	@Override
	public int updateDirectCustomOrder(Payment payment) throws Exception {
		return paymentDao.updateDirectCustomOrder(payment);
	}

	@Override
	public int countProductOrder(String m_id) throws Exception {
		return paymentDao.countProductOrder(m_id);
	}

	@Override
	public int countCustomOrder(String m_id) throws Exception {
		return paymentDao.countCustomOrder(m_id);
	}









	

	

}