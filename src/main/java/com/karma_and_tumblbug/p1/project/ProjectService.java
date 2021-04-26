package com.karma_and_tumblbug.p1.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;
import com.karma_and_tumblbug.p1.util.FileManager;

@Service
public class ProjectService {

	@Autowired
	private ProjectDAO projectDAO;

	@Autowired
	private FileManager fileManager;


	public String setSummerFileUpload(ProjectDTO projectDTO, MultipartFile file,HttpSession session) throws Exception{

		String fileName = fileManager.saveProject("project", file, session);
		return fileName;

	}


	public boolean setSummerFileDelete(ProjectDTO projectDTO, String fileName,HttpSession session) throws Exception{
		boolean result = fileManager.Delete("project", fileName, session);
		return result;
	}

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

	public int setUpdateProject(ProjectDTO projectDTO,HttpSession session,MultipartFile[] files) throws Exception{
		for(MultipartFile mf : files) {
			MediaDTO mediaDTO = new MediaDTO();
			String fileName = fileManager.save("notice", mf, session);
			mediaDTO.setNum(projectDTO.getNum());
			mediaDTO.setFileName(fileName);
			mediaDTO.setOrigineName(mf.getOriginalFilename());
			projectDAO.setFileInsert(mediaDTO);
		}
		return projectDAO.setUpdateProject(projectDTO);
	}

	public int setDeleteProject(ProjectDTO projectDTO) throws Exception{
		return projectDAO.setDeleteProject(projectDTO);
	}
}
