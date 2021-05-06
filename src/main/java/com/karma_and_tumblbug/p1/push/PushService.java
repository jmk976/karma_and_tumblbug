package com.karma_and_tumblbug.p1.push;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.project.ProjectDAO;
import com.karma_and_tumblbug.p1.project.ProjectDTO;

@Service
public class PushService {
	@Autowired
	private PushDAO pushDAO;
	
	@Autowired
	private ProjectDAO projectDAO;
	
	public int setInsertPush(PushDTO pushDTO) throws Exception{
		return pushDAO.setInsertPush(pushDTO);
	}
	
	public List<PushDTO> getPushList(PushDTO pushDTO) throws Exception{
		List<PushDTO> pushList =  pushDAO.getPushList(pushDTO);
		for(PushDTO dto : pushList) {
			ProjectDTO projectDTO = new ProjectDTO();
			projectDTO.setNum(dto.getProjectNum());
			projectDTO = projectDAO.getProject(projectDTO);
			dto.setProjectDTO(projectDTO);
		}
		return pushList;
	}
	
	public int setDeletePush(PushDTO pushDTO) throws Exception{
		return pushDAO.setDeletePush(pushDTO);
	}
}
