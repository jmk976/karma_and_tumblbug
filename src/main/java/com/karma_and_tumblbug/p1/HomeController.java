package com.karma_and_tumblbug.p1;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.karma_and_tumblbug.p1.rescue.RescueDTO;
import com.karma_and_tumblbug.p1.rescue.RescueService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private RescueService rescueService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		session.removeAttribute("state");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		/**/
		RescueDTO rescueDTO = new RescueDTO();
		rescueDTO.setStatus("구조");
        rescueDTO.setPerPage(3);
        
		List<RescueDTO> list = rescueService.getList(rescueDTO);
			

		

	    model.addAttribute("list", list);
		model.addAttribute("pager", rescueDTO);
		
		
		return "home";
	}
	
}
