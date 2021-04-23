package com.karma_and_tumblbug.p1.project;

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
	
	@GetMapping(value="projectInsertInit")
	public String projectInsert(HttpSession session)throws Exception{
		MembershipDTO dto = (MembershipDTO)session.getAttribute("membership");
		session.setAttribute("state", "p");
		String url = "";
		if(dto != null) {
			url = "project/projectInsertInit";
		} else {
			url = "redirect:../membership/login";
			
		}
		return url;
	}
	
	@PostMapping(value="projectInsertInit")
	public ModelAndView ProjectInsert(ProjectDTO projectDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		projectDTO = projectService.setInsertProject(projectDTO, session);
		mv.addObject("projectDTO", projectDTO);
		mv.setViewName("project/projectInsert");
		return mv;
	}
	
	@GetMapping(value="projectInsert")
	public ModelAndView ProjectInsert(ProjectDTO projectDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		projectDTO = projectService.getProject(projectDTO);
		mv.addObject("projectDTO", projectDTO);
		mv.setViewName("project/projectInsert");
		return mv;
	}
	
	@GetMapping(value="myProject")
	public ModelAndView getMyProject(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MembershipDTO membershipDTO = (MembershipDTO)session.getAttribute("membership");
		List<ProjectDTO> array = projectService.getMyProject(membershipDTO);
		mv.addObject("myProjects", array);
		mv.setViewName("project/myProject");
		
		return mv;
	}
	
	@PostMapping(value="projectUpdate")
	public String setUpdateProject(ProjectDTO projectDTO) throws Exception{
		int result = projectService.setUpdateProject(projectDTO);
		return "redirect:./myProject";
	}
	
	@GetMapping(value="projectDelete")
	public String setDeleteProject(ProjectDTO projectDTO) throws Exception{
		projectService.setDeleteProject(projectDTO);
		return "redirect:./myProject";
	}
}
