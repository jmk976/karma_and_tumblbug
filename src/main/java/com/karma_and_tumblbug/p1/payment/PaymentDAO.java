package com.karma_and_tumblbug.p1.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private String NAMESPACE ="com.karma_and_tumblbug.p1.PaymentDAO.";
	
	public List<PaymentDTO> getList(PaymentDTO paymentDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList", paymentDTO);
	}
	public int setDelete(PaymentDTO paymentDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", paymentDTO);
	}
	
	public int setInsert(PaymentDTO paymentDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", paymentDTO);
	}
}
