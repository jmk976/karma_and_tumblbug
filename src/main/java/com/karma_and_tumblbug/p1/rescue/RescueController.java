package com.karma_and_tumblbug.p1.rescue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/rescue/**")
public class RescueController {
	
	@Autowired
	private RescueService rescueService;
	
	@GetMapping("rescueInsert")
	public void setInsert()throws Exception{
	
	}
	
	
	@PostMapping("rescueInsert")
	public String setInsert(RescueDTO rescueDTO, Model model) throws Exception {
		
		int result = rescueService.setInsert(rescueDTO);
		String message="등록 실패";
		String path="./rescueInsert";
		if(result>0) {
			message="등록 성공";
		    path="./rescueInsert";
		}
		model.addAttribute("msg", message);
		model.addAttribute("path",path);
		return "common/commonResult";
		
	}

	

}
