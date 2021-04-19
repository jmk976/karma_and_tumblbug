package com.karma_and_tumblbug.p1.payment;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;

@Controller
@RequestMapping(value="/payment/**")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@GetMapping(value="paymentDelete")
	public String setDelete(PaymentDTO paymentDTO)throws Exception{
		int result = paymentService.setDelete(paymentDTO);
		return "redirect:./paymentList";
	}

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
	
	@GetMapping(value="paymentInsert")
	public void getInsert() throws Exception{
		
	}
	
	@GetMapping(value="bankAccount")
	public void getInsertAccount() throws Exception{
		
	}
	@GetMapping(value="card")
	public void getInsertcard() throws Exception{
		
	}
	
	@PostMapping(value="paymentInsert")
	public String getInsertAccount(PaymentDTO paymentDTO) throws Exception{
		System.out.println(paymentDTO.getDefaultMethod());
		System.out.println(paymentDTO.getId());
		System.out.println(paymentDTO.getDivision());
		System.out.println(paymentDTO.getBankName());
		System.out.println(paymentDTO.getBankAccount());
		System.out.println(paymentDTO.getOwnerName());
		System.out.println(paymentDTO.getOwnerBirth());
		System.out.println(paymentDTO.getCardNumber());
		System.out.println(paymentDTO.getExpirationDate());
		System.out.println(paymentDTO.getSecurityNumber());

		int result = paymentService.setInsert(paymentDTO);
		return "payment/temp";
	}
	@PostMapping(value="card")
	public void getInsertcard(PaymentDTO paymentDTO) throws Exception{
		
	}
}
