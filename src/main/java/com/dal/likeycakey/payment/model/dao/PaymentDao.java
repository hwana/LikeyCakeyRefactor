package com.dal.likeycakey.payment.model.dao;

import java.util.ArrayList;

import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.payment.model.vo.Payment;

public interface PaymentDao {
	
/*	public int getListCount() throws Exception;
	
	public ArrayList<Member> selectList(int currentPage, int limit) throws Exception;
	
	public Member selectOne(String id) throws Exception;
	
	public int updateMember(Member m) throws Exception;
	
	public int deleteMember(String id) throws Exception;
	
	public int deleteTotalMember() throws Exception;*/

	public ArrayList<Payment> cartselectList(String id) throws Exception;

	public int updateCart(Payment payment) throws Exception;

	public int deleteCart(int poNumber) throws Exception;

	public int insertPayment(Payment payment) throws Exception;

	public int updateProductOrder(Payment payment) throws Exception;

	public Payment paymentSuccess(String m_id) throws Exception;

	public int getBuyListCount(String m_id) throws Exception;

	public ArrayList<Payment> selectBuyList(String m_id) throws Exception;

	public int recPostUpdate(Payment payment) throws Exception;

	public int poTextUpdate(Payment payment) throws Exception;

	public int poDelete(int poNum) throws Exception;

	public ArrayList<Payment> directCheckoutList(String m_id) throws Exception;

	public int updateDirectProductOrder(Payment payment) throws Exception;

	public ArrayList<Payment> directCustomCheckoutList(String m_id) throws Exception;

	public int updateDirectCustomOrder(Payment payment) throws Exception;

	public int updateCustomCart(Payment payment) throws Exception;

	public int deleteCustomCart(int poNumber) throws Exception;

	public ArrayList<Payment> cartCustomselectList(String m_id) throws Exception;

	public int updateCustomOrder(Payment payment) throws Exception;

	public ArrayList<Payment> selectCustomBuyList(String m_id) throws Exception;
}

