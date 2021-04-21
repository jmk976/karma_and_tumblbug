package com.karma_and_tumblbug.p1.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;

@Controller
@RequestMapping(value="/project/**")
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;

	@GetMapping(value="projectList")
	public ModelAndView getProjectList()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		List<ProjectDTO> array = projectService.getProjectList();
		mv.addObject("projectList",array);
		mv.setViewName("project/projectList");
		return mv;
	}
	
	@GetMapping(value="projectInsert")
	public String projectInsert(HttpSession session)throws Exception{
		MembershipDTO dto = (MembershipDTO)session.getAttribute("membership");
		session.setAttribute("state", "p");
		String url = "";
		if(dto != null) {
			url = "project/projectInsert";
		} else {
			url = "redirect:../membership/login";
			
		}
		return url;
	}
}
