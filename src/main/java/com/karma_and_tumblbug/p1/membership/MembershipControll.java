package com.karma_and_tumblbug.p1.membership;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/membership/**")
public class MembershipControll {

	@Autowired
	private MembershipService membershipService;

	
	@GetMapping(value="joinCheck")
	public String getIdCheck(MembershipDTO membershipDTO, Model model)throws Exception{
		membershipDTO = membershipService.getIdCheck(membershipDTO);
		String result = "불가";
		if(membershipDTO == null) {
			result = "가능";
		}
		model.addAttribute("result", result);
		
		return "common/ajaxResult";
	}

	@GetMapping(value="login")
	public void login()throws Exception{

	}

	@PostMapping(value="login")
	public String login(MembershipDTO membershipDTO,HttpSession session) throws Exception{
		membershipDTO = membershipService.login(membershipDTO);
		session.setAttribute("membership", membershipDTO);
		return "redirect:../";
	}

	@GetMapping(value="logout")
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:../";
	}

	@GetMapping(value="join")
	public void join() throws Exception{

	}

	@PostMapping(value="join")
	public String join(MembershipDTO membershipDTO) throws Exception{
		int result = membershipService.join(membershipDTO);
		return "redirect:../";
	}
	@GetMapping(value="memberPage")
	public void memberPage()throws Exception{

	}
	@GetMapping(value="update")
	public void update() throws Exception{
		
	}
	
	@PostMapping(value="update")
	public String update(MembershipDTO membershipDTO, HttpSession session) throws Exception{
		int result = membershipService.update(membershipDTO);
		session.setAttribute("membership", membershipDTO);
		return "redirect:./memberPage";
	}
	
	@GetMapping(value="delete")
	public String delete(MembershipDTO membershipDTO, HttpSession session) throws Exception{
		int result = membershipService.delete(membershipDTO);
		session.invalidate();
		return "redirect:../";
	}
	
}
