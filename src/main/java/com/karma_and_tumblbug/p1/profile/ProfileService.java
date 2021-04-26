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
	
	public ProfileDTO getProfile(ProfileDTO profileDTO)throws Exception{
		return profileDAO.getProfile(profileDTO);
	}
	
	public int updateProfile(ProfileDTO profileDTO)throws Exception{
		return profileDAO.updateProfile(profileDTO);
	}
}
