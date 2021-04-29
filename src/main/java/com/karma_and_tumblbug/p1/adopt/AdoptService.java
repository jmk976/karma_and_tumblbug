package com.karma_and_tumblbug.p1.adopt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdoptService {
	
	@Autowired
	private AdoptDAO adoptDAO;
	
	public int setInsert(AdoptDTO adoptDTO)throws Exception{
		return adoptDAO.setInsert(adoptDTO);
	}
	
	public AdoptDTO getSelect(AdoptDTO adoptDTO)throws Exception{
		return adoptDAO.getSelect(adoptDTO);
	}

}
