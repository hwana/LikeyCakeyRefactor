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
	public ArrayList<Payment> cartselectList(String id) throws Exception {
		System.out.println("PaymentServiceImpl : cartselectList 도착");
		return paymentDao.cartselectList(id);
	}

	@Override
	public int updateCart(Payment payment) throws Exception {
		System.out.println("PaymentServiceImpl : updateCart 도착");
		return paymentDao.updateCart(payment);
	}

	@Override
	public int deleteCart(int poNumber) throws Exception {
		System.out.println("PaymentServiceImpl : deleteCart 도착");
		return paymentDao.deleteCart(poNumber);
	}

	@Override
	public int insertPayment(Payment payment) throws Exception {
		System.out.println("PaymentServiceImpl : insertPayment 도착");
		return paymentDao.insertPayment(payment);
	}

	@Override
	public int updateProductOrder(Payment payment) throws Exception {
		System.out.println("PaymentServiceImpl : updateProductOrder 도착");
		return paymentDao.updateProductOrder(payment);
	}

	@Override
	public Payment paymentSuccess(String m_id) throws Exception {
		System.out.println("PaymentServiceImpl : paymentSuccess 도착");
		return paymentDao.paymentSuccess(m_id);
	}

	

}