package com.karma_and_tumblbug.p1.adopt;

import java.util.Collection;
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

@Controller
@RequestMapping("/adopt/**")
public class AdoptController {
	
	@Autowired
	private AdoptService adoptService;
	
	@GetMapping("adoptInsert")
	public void setInsert(AdoptDTO adoptDTO, HttpSession session)throws Exception{
	  ModelAndView mv = new ModelAndView();
	 
	  RescueDTO rescueDTO = new RescueDTO();
	  System.out.println("sn:"+rescueDTO.getSn());
	
	  
	  mv.addObject("dto", rescueDTO);

	  
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
		
		model.addAttribute("dto", adoptDTO);
		return "adopt/adoptSelect";
	}

}
