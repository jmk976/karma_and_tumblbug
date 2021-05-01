package com.karma_and_tumblbug.p1.adopt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.rescue.RescueDTO;
import com.karma_and_tumblbug.p1.util.Pager;

@Service
public class AdoptService {
	
	@Autowired
	private AdoptDAO adoptDAO;
	
	public int setUpdate(AdoptDTO adoptDTO)throws Exception{
		return adoptDAO.setUpdate(adoptDTO);
	}
	
	public int setDelete(AdoptDTO adoptDTO) throws Exception {
		return adoptDAO.setDelete(adoptDTO);
	}
	
	public List<AdoptDTO> getList(Pager pager)throws Exception{
		pager.makeRow();
		
		long totalCount = adoptDAO.getTotalCount(pager);
		
		pager.makeNum(totalCount);
		
		return adoptDAO.getList(pager);
	}
	
	public int setInsert(AdoptDTO adoptDTO)throws Exception{
		return adoptDAO.setInsert(adoptDTO);
	}
	
	public AdoptDTO getSelect(AdoptDTO adoptDTO)throws Exception{
		return adoptDAO.getSelect(adoptDTO);
	}

}
