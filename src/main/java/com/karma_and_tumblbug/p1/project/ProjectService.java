package com.karma_and_tumblbug.p1.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectService {

	@Autowired
	private ProjectDAO projectDAO;
	
	public List<ProjectDTO> getProjectList()throws Exception{
		return projectDAO.getProjectList();
	}
}
