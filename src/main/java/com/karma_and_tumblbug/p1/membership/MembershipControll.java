package com.karma_and_tumblbug.p1.membership;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/membership/**")
public class MembershipControll {
	
	@Autowired
	private MembershipService membershipService;
	
	
	@GetMapping(value="login")
	public void login()throws Exception{
		
	}
	
	@PostMapping(value="login")
	public String login(MembershipDTO membershipDTO,HttpSession session) throws Exception{
		membershipDTO = membershipService.login(membershipDTO);
		session.setAttribute("membership", membershipDTO);
		return "redirect:../";
	}
}
