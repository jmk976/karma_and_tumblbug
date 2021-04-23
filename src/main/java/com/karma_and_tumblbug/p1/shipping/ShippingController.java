package com.karma_and_tumblbug.p1.shipping;

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

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/shipping/**")
public class ShippingController {
	
	@Autowired
	private ShippingService shippingService;
	
	@PostMapping("shippingUpdate")
	public String setUpdate(ShippingDTO shippingDTO)throws Exception{
		int result = shippingService.setUpdate(shippingDTO);
		return "redirect:./shippingList";
	}
	
	@GetMapping("shippingUpdate")
	public void setUpdate(ShippingDTO shippingDTO, Model model)throws Exception{
		shippingDTO = shippingService.getSelect(shippingDTO);
		model.addAttribute("dto", shippingDTO);
	}
	
	

	
	//삭제
	@RequestMapping("shippingDelete")
	public ModelAndView setDelete(ShippingDTO shippingDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = shippingService.setDelete(shippingDTO);
		
		String message = "삭제에 실패하였습니다";
		String path = "./shippingList";
		
		if(result>0) {
			message="삭제 되었습니다";
		}
		mv.addObject("msg", message);
		mv.addObject("path", path);
		mv.setViewName("common/commonResult");
		return mv;
	}
	
	//삽입
	@PostMapping("shippingInsert")
	public String setInsert(ShippingDTO shippingDTO, Model model)throws Exception{
		int result = shippingService.setInsert(shippingDTO);

		return "redirect:./shippingList";
		
	}
	
	@GetMapping("shippingInsert")
	public void setInsert(ShippingDTO shippingDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", shippingDTO);
		mv.setViewName("shipping/shippingInsert");
	}
	
	//리스트	
	@RequestMapping("shippingList")
	public ModelAndView getList(ShippingDTO shippingDTO, HttpSession httpSession)throws Exception{
		ModelAndView mv = new ModelAndView();
		MembershipDTO membershipDTO = (MembershipDTO)httpSession.getAttribute("membership");		
		shippingDTO.setId(membershipDTO.getId());
		List<ShippingDTO> ar = shippingService.getList(shippingDTO);
		mv.addObject("list", ar);
		mv.setViewName("shipping/shippingList");
		return mv;
	}
	
	//셀렉트
	@GetMapping("shippingSelect")
	public ModelAndView getSelect(ShippingDTO shippingDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		shippingDTO = shippingService.getSelect(shippingDTO);
		mv.addObject("dto", shippingDTO);
		mv.setViewName("shpping/shippingSelect");
		return mv;
	}
	

	

}
