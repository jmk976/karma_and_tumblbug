package com.karma_and_tumblbug.p1.rescue;


import java.util.List;


import javax.servlet.http.HttpSession;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
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
	
	
	@Autowired
	private HttpSession session;
	
	
	
	
	
	public List<RescueDTO> getList(RescueDTO rescueDTO) throws Exception {
		
		// -------startRow, lastRow--------
		rescueDTO.makeRow();
	
		//-------------------------------
		
		//-----------페이징계산  ---------
		long totalCount= rescueDAO.getTotalCount(rescueDTO);
		rescueDTO.makeNum(totalCount);
		return rescueDAO.getList(rescueDTO);
	}
	
	
	


	public int setDelete(RescueDTO rescueDTO) throws Exception {
		return rescueDAO.setDelete(rescueDTO);
	}
	
	public RescueFileDTO getSelectFile(RescueDTO rescueDTO) throws Exception{
		return rescueDAO.getSelectFile(rescueDTO); 
		
	}
    
	
	
	
	public RescueDTO getSelect(RescueDTO rescueDTO) throws Exception{
	    rescueDTO = rescueDAO.getSelect(rescueDTO);
//		RescueFileDTO rescueFileDTO = rescueDAO.getSelectFile(rescueDTO); 
//		rescueDTO.setRescueFileDTO(rescueFileDTO);
		return rescueDTO;
	}
	
	public int setFileInsert(RescueDTO rescueDTO,MultipartFile avatar) throws Exception{
        String fileName = fileManager.save("rescue", avatar, session);
    	
        RescueFileDTO rescueFileDTO = new RescueFileDTO();
        rescueFileDTO.setSn(rescueDTO.getSn());
        rescueFileDTO.setOriginalName(avatar.getOriginalFilename());
        rescueFileDTO.setFileName(fileName);
        
        int result = rescueDAO.setFileInsert(rescueFileDTO);
        return result;
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
    public int setFileDelete(RescueDTO rescueDTO)throws Exception{
		//fileName을 print
    	//1. 조회
    	RescueFileDTO rescueFileDTO = rescueDAO.getSelectFile(rescueDTO);
    	//2. table 삭제
    	int result = rescueDAO.setFileDelete(rescueFileDTO);
        //3. HDD 삭제
    			if(result > 0) {
    				fileManager.delete("rescue", rescueFileDTO.getFileName(), session);
    			}
    			return result;
	}
    
    
    
    public int setUpdate(RescueDTO rescueDTO,MultipartFile avatar ) throws Exception {
    	System.out.println("rescueDTO.getRescueFileDTO():"+rescueDTO.getRescueFileDTO());
    	// 새로운 파일이 등록되었는지 확인
    	 if(avatar.getOriginalFilename() != null && avatar.getOriginalFilename() != "") {
    		 // 기존 파일을 삭제

//    		//1. 조회
//    	    	RescueFileDTO rescueFileDTO = rescueDAO.getSelectFile(rescueDTO);
//    	    	//2. table 삭제
//    	    	int result = rescueDAO.setFileDelete(rescueFileDTO);
//    	        //3. HDD 삭제
//    	    			if(result > 0) {
//    	    				fileManager.delete("rescue", rescueFileDTO.getFileName(), session);
//    	    			}
    	  // 새로 첨부한 파일을 등록
    	    			
    	    			System.out.println(avatar.isEmpty());
    	String fileName = fileManager.save("rescue", avatar, session);
     	
        RescueFileDTO rescueFileDTO = new RescueFileDTO();
        rescueFileDTO.setSn(rescueDTO.getSn());
        rescueFileDTO.setOriginalName(avatar.getOriginalFilename());
        rescueFileDTO.setFileName(fileName);

   	    rescueDAO.setFileUpdate(rescueFileDTO);
    	 } else {
    		 // 새로운 파일이 등록되지 않았다면
   		  // 기존 이미지를 그대로 사용
    		
    		 
    	 }
    	
    	System.out.println("rescueService의 setupdate안 sn:"+ rescueDTO.getSn());
    
		
        
        int result = rescueDAO.setUpdate(rescueDTO);
    	System.out.println("rescueService의 setupdate안 DAO 다녀온후..:"+ rescueDTO.getSn());

        System.out.println("setUpdate:" + result);
		 
		 
		 
		return result;
  
	}


}
