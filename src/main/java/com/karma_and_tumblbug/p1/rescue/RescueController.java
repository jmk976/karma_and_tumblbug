package com.karma_and_tumblbug.p1.rescue;


import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.util.Pager;



@Controller
@RequestMapping(value="/rescue/**")
public class RescueController {
	
	@Autowired
	private RescueService rescueService;
	
	@GetMapping("rescueGallery")
	public ModelAndView rescueGallery(RescueDTO rescueDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
	    rescueDTO.setPerPage(6);
		
		List<RescueDTO> list = rescueService.getList(rescueDTO);
			
		
		
		
		mv.addObject("list", list);
		mv.addObject("pager", rescueDTO);
		mv.setViewName("rescue/rescueGallery");
		return mv;
	}
	
	
	@GetMapping("rescueList")
	public ModelAndView getList(RescueDTO rescueDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<RescueDTO> list = rescueService.getList(rescueDTO);
		
		mv.addObject("list", list);
		mv.addObject("pager", rescueDTO);
		mv.setViewName("rescue/rescueList");
		
		return mv;
	}
	
	
	
	
	
	
	
	
	@GetMapping("rescueDelete")
	public ModelAndView setDelete(RescueDTO rescueDTO) throws Exception{
		ModelAndView mv= new ModelAndView();

		int result = rescueService.setDelete(rescueDTO);
		String message="삭제 실패";
		String path = "./rescueList";
		
		if(result>0) {
			message="삭제 성공";
			
		}
		
		mv.addObject("msg",message);
		mv.addObject("path",path);
		
		mv.setViewName("common/commonResult");
		
		return mv;
	}
	
	
	@GetMapping("rescueSelect")
    public ModelAndView getSelect(RescueDTO rescueDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
    	rescueDTO = rescueService.getSelect(rescueDTO);
    	mv.addObject("rescue", rescueDTO);
    	mv.setViewName("rescue/rescueSelect");
    	
    	return mv;
    }
	
	@GetMapping("rescueInsert")
	public void setInsert()throws Exception{
		

	}
	
	
	@PostMapping("rescueInsert")
	public String setInsert(RescueDTO rescueDTO,MultipartFile avatar,HttpSession session, Model model) throws Exception {
		
		int result = rescueService.setInsert(rescueDTO, avatar, session);
		System.out.println(avatar.getName()); //파라미터명
		System.out.println(avatar.getOriginalFilename());//업로드시의 파일 , 확장자를 알 수 있음. 
		System.out.println(avatar.getSize());// 파일의 크기(byte)
		System.out.println(avatar.isEmpty());// 파일의 존재 유무
		
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
	
	@GetMapping("rescueUpdate")
	public ModelAndView setUpdate(RescueDTO rescueDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
    	rescueDTO = rescueService.getSelect(rescueDTO);
		
		mv.addObject("dto", rescueDTO);
		mv.setViewName("rescue/rescueUpdate");
		return mv;
		
	}
	
	@PostMapping("rescueUpdate")
	public String setUpdate(RescueDTO rescueDTO,MultipartFile avatar,HttpSession session, Model model) throws Exception{
		int result = rescueService.setUpdate(rescueDTO, avatar, session);
		String message="등록 실패";
		String path="./rescueUpdate";
		if(result>0) {
			message="등록 성공";
		    path="./rescueList";
		    
		}
		model.addAttribute("msg", message);
		model.addAttribute("path",path);
		return "common/commonResult";
	
	}
	
	
	

}
