package com.karma_and_tumblbug.p1.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;

@Service
public class ProjectService {

	@Autowired
	private ProjectDAO projectDAO;
	
	public List<ProjectDTO> getProjectList()throws Exception{
		return projectDAO.getProjectList();
	}
	public ProjectDTO setInsertProject(ProjectDTO projectDTO,HttpSession session)throws Exception{
		Long projectNum = projectDAO.getProjectNum();
		projectDTO.setNum(projectNum);
		MembershipDTO dto = (MembershipDTO)session.getAttribute("membership");
		projectDTO.setId(dto.getId());
		projectDTO.setMakerName(dto.getName());
		
		projectDAO.setInsertProject(projectDTO);
		
		projectDTO = projectDAO.getProject(projectDTO);
		
		return projectDTO;
	}
	public List<ProjectDTO> getMyProject(MembershipDTO memberhsipDTO) throws Exception{
		return projectDAO.getMyProject(memberhsipDTO);
	}
	
	public ProjectDTO getProject(ProjectDTO projectDTO) throws Exception{
		return projectDAO.getProject(projectDTO);
	}
	
	public int setUpdateProject(ProjectDTO projectDTO) throws Exception{
		return projectDAO.setUpdateProject(projectDTO);
	}
}
