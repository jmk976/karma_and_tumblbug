package com.karma_and_tumblbug.p1.profile;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/profile/**") //setting으로 가야되나
public class ProfileController {
	
	@Autowired
	private ProfileService profileService;
	
	@RequestMapping("profileUpdate")
	public void setUpdate()throws Exception{
		
	}
	@PostMapping("profileUpdate")
	public String setUpdate(ProfileDTO profileDTO, HttpSession session)throws Exception{
		int result = profileService.setUpdate(profileDTO);
		if(result>0) {
			session.setAttribute("profile", profileDTO);
		}
		return "refirect:../";
	}
	
	@PostMapping("profileInsert")
	public String setInsert(ProfileDTO profileDTO, Model model)throws Exception{
		int result = profileService.setInsert(profileDTO);
		return "redirect:./profile";
	}
	@GetMapping("profileInsert")
	public void setInsert(ProfileDTO profileDTO)throws Exception{
		ModelAndView mv= new ModelAndView();
		mv.addObject("dto", profileDTO);
		mv.setViewName("profile/profileInsert");
	}
	
	
	
	

}
