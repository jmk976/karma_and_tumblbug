package com.karma_and_tumblbug.p1.sponsor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/sponsor/**")
public class SponsorController {

	@Autowired
	private SponsorService sponsorService;
	
	@GetMapping("sponsorSelect")
    public ModelAndView getSelect(SponsorDTO sponsorDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
    	sponsorDTO = sponsorService.getSelect(sponsorDTO);
    	mv.addObject("dto", sponsorDTO);
    	mv.setViewName("sponsor/sponsorSelect");
    	
    	return mv;
    }
}
