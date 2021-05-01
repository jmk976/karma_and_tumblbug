package com.karma_and_tumblbug.p1.adopt;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.rescue.RescueDTO;
import com.karma_and_tumblbug.p1.sponsor.SponsorDTO;
import com.karma_and_tumblbug.p1.util.Pager;

@Controller
@RequestMapping("/adopt/**")
public class AdoptController {
	
	@Autowired
	private AdoptService adoptService;
	

	@GetMapping("adoptUpdate")
	public ModelAndView setUpdate(AdoptDTO adoptDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		adoptDTO = adoptService.getSelect(adoptDTO);
		
		mv.addObject("dto", adoptDTO);
		mv.setViewName("adopt/adoptUpdate");
        
		return mv;
	}
	
	@PostMapping("adoptUpdate")
	public ModelAndView setUpdate(AdoptDTO adoptDTO, ModelAndView mv)throws Exception{
		System.out.println("adoptDTO.getPass():"+adoptDTO.getPass());
		System.out.println("adoptDTO.getAdoptNum():"+adoptDTO.getAdoptNum());
		int result = adoptService.setUpdate(adoptDTO);
		System.out.println("입력후 adoptDTO.getPass():"+adoptDTO.getPass());
		System.out.println("입력후 adoptDTO.getAdoptNum():"+adoptDTO.getAdoptNum());
		
		String message="업데이트 실패";
		String path = "./";
		
		if(result>0) {
			message="업데이트 성공";
			path = "./adoptList";
		}
		
		mv.addObject("msg",message);
		mv.addObject("path",path);
		
		mv.setViewName("common/commonResult");
		
		return mv;
	}
	
	@GetMapping("adoptDelete")
	public ModelAndView setDelete(AdoptDTO adoptDTO) throws Exception{
		ModelAndView mv= new ModelAndView();

		int result = adoptService.setDelete(adoptDTO);
		String message="삭제 실패";
		String path = "./";
		
		if(result>0) {
			message="삭제 성공";
			path = "./adoptList";
			
		}
		
		mv.addObject("msg",message);
		mv.addObject("path",path);
		
		mv.setViewName("common/commonResult");
		
		return mv;
	}
	
	
	@GetMapping("adoptList")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(pager.getCurPage());
		
		System.out.println("Service 호출전: "+pager.getTotalPage());
		List<AdoptDTO> ar = adoptService.getList(pager);
		System.out.println("Service 호출: "+pager.getTotalPage());
		
		modelAndView.addObject("list", ar);
		modelAndView.setViewName("adopt/adoptList");
		modelAndView.addObject("pager",pager);
		return modelAndView;
	}
	
	@GetMapping("adoptInsert")
	public ModelAndView setInsert(AdoptDTO adoptDTO, HttpSession session)throws Exception{
	  ModelAndView mv = new ModelAndView();
	
	  mv.addObject("dto", adoptDTO);

	  return mv;
	}
	
	@PostMapping("adoptInsert")
	public String setInsert(AdoptDTO adoptDTO, Model model)throws Exception {
		int result = adoptService.setInsert(adoptDTO);
		String message = "입양 신청이 실패했습니다. 다시 시도해주세요.";
	    String path="./adoptInsert";
	    	
	    if(result>0) {
	    	message = "입양 신청 성공했습니다.";
	    	path= "../";
	    	
	    }
	    model.addAttribute("msg", message);
		model.addAttribute("path",path);
		return "common/commonResult";
	    		
		
	}
	
	@GetMapping("adoptSelect")
	public String getSelect(AdoptDTO adoptDTO, Model model)throws Exception{
		adoptDTO = adoptService.getSelect(adoptDTO);
		
		String address = adoptDTO.getMembershipDTO().getAddress();
		System.out.println("address:"+address);
		System.out.println(adoptDTO.getPass());
		
		model.addAttribute("dto", adoptDTO);
		return "adopt/adoptSelect";
	}
	
	@GetMapping("adoptCheck")
	public void adoptCheck() throws Exception{
	}
	
	@GetMapping("adoptUser")
	public void adoptUser()throws Exception{
	}
	
	@GetMapping("adoptPass")
	public String adoptPass(AdoptDTO adoptDTO, Model model)throws Exception{
		adoptDTO= adoptService.getSelect(adoptDTO);
		model.addAttribute("dto", adoptDTO);
		return "adopt/adoptPass";
	}

}
