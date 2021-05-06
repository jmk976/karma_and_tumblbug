package com.karma_and_tumblbug.p1.push;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;
import com.karma_and_tumblbug.p1.project.ProjectDTO;
import com.karma_and_tumblbug.p1.project.ProjectService;

@Controller
@RequestMapping(value="/push/**")
public class PushController {
	
	@Autowired
	private PushService pushService;
	
	@Autowired
	private ProjectService projectService;
	
	@GetMapping(value="pushInsert")
	public ModelAndView setPushInsert(PushDTO pushDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		ProjectDTO projectDTO = new ProjectDTO();
		projectDTO.setNum(pushDTO.getProjectNum());
		projectDTO = projectService.getProject(projectDTO);
		
		mv.addObject("push", pushDTO);
		mv.addObject("projectDTO",projectDTO);
		mv.setViewName("push/pushInsert");
		
		return mv;
	}
	
	@PostMapping(value="pushInsert")
	public String setPushInsert(PushDTO pushDTO, ModelAndView mv) throws Exception{
		System.out.println(pushDTO.getId());
		System.out.println(pushDTO.getProjectNum());
		System.out.println(pushDTO.getQuantity());
		System.out.println(pushDTO.getPaymentNum());
		int result = pushService.setInsertPush(pushDTO);
		return "redirect:./pushList?id="+pushDTO.getId();
		
	}
	
	@GetMapping(value="pushList")
	public String getPushList(PushDTO pushDTO,HttpSession session) throws Exception{
		List<PushDTO> pushList = pushService.getPushList(pushDTO);
		session.setAttribute("pushList", pushList);
		return "push/pushList";
	}
	
	@GetMapping(value="pushDelete")
	public String setDeletePush(PushDTO pushDTO,HttpSession session) throws Exception{
		System.out.println(pushDTO.getNum());
		int result = pushService.setDeletePush(pushDTO);
		MembershipDTO mDto = ((MembershipDTO)session.getAttribute("membership"));
		return "redirect:./pushList?id="+mDto.getId();
	}
}
