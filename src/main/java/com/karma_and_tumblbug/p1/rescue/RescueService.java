package com.karma_and_tumblbug.p1.rescue;


import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.karma_and_tumblbug.p1.util.FileManager;




@Service
public class RescueService {
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private RescueDAO rescueDAO;
	
	
	
	public List<RescueDTO> getList(RescueDTO rescueDTO) throws Exception {
		
		// -------startRow, lastRow--------
		rescueDTO.makeRow();
	
		//-------------------------------
		
		//-----------페이징계산  ---------
		long totalCount= rescueDAO.getTotalCount(rescueDTO);
		rescueDTO.makeNum(totalCount);
		return rescueDAO.getList(rescueDTO);
	}
	
	
	public int setUpdate(RescueDTO rescueDTO) throws Exception {
		return rescueDAO.setUpdate(rescueDTO);
	}


	public int setDelete(RescueDTO rescueDTO) throws Exception {
		return rescueDAO.setDelete(rescueDTO);
	}
	
	public RescueFileDTO getSelectFile(RescueDTO rescueDTO) throws Exception{
		return rescueDAO.getSelectFile(rescueDTO); 
		
	}
    
	
	
	
	public RescueDTO getSelect(RescueDTO rescueDTO) throws Exception{
	    rescueDTO = rescueDAO.getSelect(rescueDTO);
		RescueFileDTO rescueFileDTO = rescueDAO.getSelectFile(rescueDTO); 
		rescueDTO.setRescueFileDTO(rescueFileDTO);
		return rescueDTO;
	}
	
    public int setInsert(RescueDTO rescueDTO,MultipartFile avatar, HttpSession session)throws Exception{
    	String fileName = fileManager.save("rescue", avatar, session);
        
        RescueFileDTO rescueFileDTO = new RescueFileDTO();
        rescueFileDTO.setSn(rescueDTO.getSn());
        rescueFileDTO.setOriginalName(avatar.getOriginalFilename());
        rescueFileDTO.setFileName(fileName);
		
        
        int result = rescueDAO.setInsert(rescueDTO);
		 result = rescueDAO.setFileInsert(rescueFileDTO);
		 
		 
		 
		return result;
   
    	
    }


}
