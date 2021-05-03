package com.karma_and_tumblbug.p1.membership;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.profile.ProfileDTO;

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
	public ModelAndView login(MembershipDTO membershipDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(membershipDTO.getId());
		System.out.println(membershipDTO.getPw());
		mv.addObject("dto", membershipDTO);
		String path="membership/login";
		membershipDTO = membershipService.login(membershipDTO);
		if(membershipDTO!=null) {
			session.setAttribute("membership", membershipDTO);
			if(session.getAttribute("state")==null) {
				path="redirect:../";				
			}else {
				path="redirect:../project/projectInsertInit";
			}
		}
		mv.setViewName(path);
		return mv;
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
		membershipDTO.setBirth(membershipDTO.getBirth().replace(",", "-"));
		int result = membershipService.join(membershipDTO);
		return "redirect:../";
	}
	
	@PostMapping(value = "joinProfile")
	public String joinProfile(ProfileDTO profileDTO) throws Exception{
		int result = membershipService.joinProfile(profileDTO);
		return "redirect:../";
	}
	
	@GetMapping(value="joinProfile")
	public void joinProfile()throws Exception{
		
	}
	
	@GetMapping(value="memberPage")
	public void memberPage()throws Exception{

	}
	@GetMapping(value="update")
	public void update() throws Exception{
		
	}
	
	@PostMapping(value="update")
	public String update(MembershipDTO membershipDTO, HttpSession session) throws Exception{
		membershipDTO.setBirth(membershipDTO.getBirth().replace(",", "-"));
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
