package com.karma_and_tumblbug.p1.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {

	@Autowired
	private PaymentDAO paymentDAO;
	
	public List<PaymentDTO> getList(PaymentDTO paymentDTO) throws Exception{
		return paymentDAO.getList(paymentDTO);
	}
	public int setDelete(PaymentDTO paymentDTO) throws Exception{
		return paymentDAO.setDelete(paymentDTO);
	}
	public int setInsert(PaymentDTO paymentDTO) throws Exception{
		return paymentDAO.setInsert(paymentDTO);
	}
	
	
}
