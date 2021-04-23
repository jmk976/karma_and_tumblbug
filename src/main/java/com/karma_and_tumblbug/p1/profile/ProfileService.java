package com.karma_and_tumblbug.p1.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.util.FileManager;


@Service
public class ProfileService {

	@Autowired
	private ProfileDAO profileDAO;
	@Autowired
	private FileManager fileManager;
	
	public int setUpdate(ProfileDTO profileDTO)throws Exception{
		return profileDAO.setUpdate(profileDTO);
	}
	
	public int setInsert(ProfileDTO profileDTO)throws Exception{
		return profileDAO.setInsert(profileDTO);
	}
	
	public int setFileInsert(ProfilePicDTO picDTO)throws Exception{
		return profileDAO.setFileInsert(picDTO);
	}
	

}
