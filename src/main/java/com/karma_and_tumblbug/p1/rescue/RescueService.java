package com.karma_and_tumblbug.p1.rescue;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.util.Pager;



@Service
public class RescueService {
	
	@Autowired
	private RescueDAO rescueDAO;
	
	public List<RescueDTO> getList(RescueDTO rescueDTO) throws Exception {
		return rescueDAO.getList(rescueDTO);
	}
	
	
	public int setUpdate(RescueDTO rescueDTO) throws Exception {
		return rescueDAO.setUpdate(rescueDTO);
	}


	public int setDelete(RescueDTO rescueDTO) throws Exception {
		return rescueDAO.setDelete(rescueDTO);
	}

	
	public RescueDTO getSelect(RescueDTO rescueDTO) throws Exception{
		return rescueDAO.getSelect(rescueDTO);
	}
	
    public int setInsert(RescueDTO rescueDTO)throws Exception{
    	
   
    	
    	return rescueDAO.setInsert(rescueDTO);
    }


}
