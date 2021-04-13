package com.karma_and_tumblbug.p1.payment;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;

@Controller
@RequestMapping(value="/payment/**")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;

	@GetMapping(value="paymentList")
	public ModelAndView getList(PaymentDTO paymentDTO,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MembershipDTO dto = ((MembershipDTO)session.getAttribute("membership"));
		paymentDTO.setId(dto.getId());
		List<PaymentDTO> array = paymentService.getList(paymentDTO);
		mv.addObject("list", array);
		mv.setViewName("payment/paymentList");
		
		return mv;
	}
}
