package com.karma_and_tumblbug.p1.sponsor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.karma_and_tumblbug.p1.util.Pager;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping(value="/sponsor/**")
public class SponsorController {

	@Autowired
	private SponsorService sponsorService;
	
	@GetMapping("sponsorJoin")
	public ModelAndView setInsert(SponsorDTO sponsorDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", sponsorDTO);
		mv.setViewName("sponsor/sponsorJoin");
		
		return mv;
		
	}
	
	@PostMapping("sponsorJoin")
	public String setInsert(SponsorDTO sponsorDTO, Model model) throws Exception {
		
		System.out.println(sponsorDTO.getLastPay());
		int result = sponsorService.setInsert(sponsorDTO);
		String message="후원 신청이 실패했습니다. 다시 시도해주세요.";
		String path="./sponsorCheck";
		if(result>0) {
			message="후원해주셔서 감사합니다.";
		    path="../";
		}
		model.addAttribute("msg", message);
		model.addAttribute("path",path);
		return "common/commonResult";
		
	}
	
	@GetMapping("sponsorCheck")
	public void sponsorCheck() throws Exception{
		
	}
	
	@GetMapping("sponsorSelect")
    public ModelAndView getSelect(SponsorDTO sponsorDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
    	sponsorDTO = sponsorService.getSelect(sponsorDTO);
    	mv.addObject("dto", sponsorDTO);
    	mv.setViewName("sponsor/sponsorSelect");
    	
    	return mv;
    }
	
	@RequestMapping("sponsorList")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(pager.getCurPage());
		
		System.out.println("Service 호출전: "+pager.getTotalPage());
		List<SponsorDTO> ar = sponsorService.getList(pager);
		System.out.println("Service 호출: "+pager.getTotalPage());
		
		long totalSum = sponsorService.getTotalSum(pager);
		
		modelAndView.addObject("totalSum", totalSum);


		modelAndView.addObject("list", ar);
		modelAndView.setViewName("sponsor/sponsorList");
		modelAndView.addObject("pager",pager);
		return modelAndView;
	}
	
	@GetMapping("sponsorListMon")
	public ModelAndView getListMon(Pager pager)throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		List<SponsorDTO> arr = sponsorService.getListMon(pager);
		
     	long totalSumMon = sponsorService.getTotalSumMon(pager);
	
        modelAndView.addObject("totalSumMon", totalSumMon);
		modelAndView.addObject("listMon", arr);
		modelAndView.addObject("pagerMon",pager);
		modelAndView.setViewName("sponsor/sponsorListMon");
		return modelAndView;
	}
	
	

}
