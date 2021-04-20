package com.karma_and_tumblbug.p1.rescue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RescueService {
	
	@Autowired
	private RescueDAO rescueDAO;
	
    public int setInsert(RescueDTO rescueDTO)throws Exception{
    	return rescueDAO.setInsert(rescueDTO);
    }


}
