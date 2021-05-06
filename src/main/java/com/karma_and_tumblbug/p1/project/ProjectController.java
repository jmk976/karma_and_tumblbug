package com.karma_and_tumblbug.p1.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.board.BoardDTO;
import com.karma_and_tumblbug.p1.membership.MembershipDTO;
import com.karma_and_tumblbug.p1.payment.PaymentDTO;
import com.karma_and_tumblbug.p1.payment.PaymentService;
import com.karma_and_tumblbug.p1.push.PushDTO;
import com.karma_and_tumblbug.p1.push.PushService;

@Controller
@RequestMapping(value="/project/**")
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private PushService pushService;

	
	
	@PostMapping(value="summerFileDelete")
	public ModelAndView setSummerFileDelete(ProjectDTO projectDTO,String fileName,HttpSession session) throws Exception{
		ModelAndView mv  = new ModelAndView();
		boolean result = projectService.setSummerFileDelete(projectDTO,fileName, session);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	@PostMapping(value="summerFileUpload")
	public ModelAndView setSummerFileUpload(ProjectDTO projectDTO,MultipartFile file,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("summerfileUpload");
		System.out.println(file.getOriginalFilename());
		String fileName = projectService.setSummerFileUpload(projectDTO, file, session);
		fileName="../resources/images/project/s/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@GetMapping(value="projectList")
	public ModelAndView getProjectList(ProjectDTO projectDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ProjectDTO> array = projectService.getProjectList(projectDTO);
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
	public String setUpdateProject(ProjectDTO projectDTO,MultipartFile files,HttpSession session,String searchTag) throws Exception{
		System.out.println(searchTag);
		projectService.setInsertSearchTag(projectDTO, searchTag);
		int result = projectService.setUpdateProject(projectDTO,session,files);
		return "redirect:./myProject";
	}
	
	@GetMapping(value="projectDelete")
	public String setDeleteProject(ProjectDTO projectDTO) throws Exception{
		projectService.setDeleteProject(projectDTO);
		return "redirect:./myProject";
	}
	
	@GetMapping(value="fileDelete")
	public ModelAndView setFileDelete(ProjectDTO projectDTO,MediaDTO mediaDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = projectService.setFileDelete(projectDTO,mediaDTO,session);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping(value="projectSelect")
	public ModelAndView projectSelect(ProjectDTO projectDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		projectDTO = projectService.getProject(projectDTO);
		BoardDTO tempDTO = new BoardDTO();
		tempDTO.setBoardSort(String.valueOf(projectDTO.getNum()));
		List<BoardDTO> community = projectService.getCommunity(tempDTO);
		mv.addObject("selectDTO", projectDTO);
		mv.addObject("community", community);
		MembershipDTO mDto = (MembershipDTO)session.getAttribute("membership");
		System.out.println("---------");

		if(mDto!=null) {
			
		PushDTO pushDTO = new PushDTO();
		pushDTO.setId(mDto.getId());
		List<PushDTO> pushList = pushService.getPushList(pushDTO);
		System.out.println("---------");
		for(PushDTO dto : pushList) {
			System.out.println(dto.getProjectNum());
		}
		mv.addObject("pList", pushList);
		}
		
		
		mv.setViewName("project/projectSelect");
		return mv;
	}
	@GetMapping(value="adminProjectCheck")
	public ModelAndView adminProjectCheck() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ProjectDTO> array = projectService.getAdminProjectCheck();
		mv.addObject("adminProject", array);
		mv.setViewName("project/adminProjectCheck");
		return mv;
	}
	
	@GetMapping(value="projectAdminUpdate")
	public String projectAdminUpdate(ProjectDTO projectDTO) throws Exception{
		String state = projectDTO.getState();
		state = state.replace("'", "");
		projectDTO = projectService.getProject(projectDTO);
		projectDTO.setState(state);
		int result = projectService.setStateUpdate(projectDTO);
		return "redirect:./adminProjectCheck";
	}
	@GetMapping(value="projectSelectAdmin")
	public ModelAndView projectSelectAdmin(ProjectDTO projectDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		projectDTO = projectService.getProject(projectDTO);
		mv.addObject("selectDTO", projectDTO);
		mv.setViewName("project/projectSelectAdmin");
		return mv;
	}
	
	@GetMapping(value="tagDelete")
	public ModelAndView setSearchTagDelete(SearchDTO searchDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = projectService.setSearchTagDelete(searchDTO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@GetMapping(value="projectSelectUpdate")
	public void projectSelectUpdate(long num,Model model)throws Exception{
		System.out.println(num);
		ProjectDTO projectDTO = new ProjectDTO();
		projectDTO.setNum(num);
		projectDTO = projectService.getProject(projectDTO);
		model.addAttribute("dto", projectDTO);
	}
}
