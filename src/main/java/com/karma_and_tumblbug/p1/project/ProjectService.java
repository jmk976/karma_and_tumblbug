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
		List<ProjectDTO> array = projectDAO.getProjectList();
		for(int i=0;i<array.size();i++) {
			ProjectDTO dto = new ProjectDTO();
			dto.setMedia_id(array.get(i).getMedia_id());
			List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
			array.get(i).setMediaFiles(mDtos);
		}
		return array;
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
		
		List<ProjectDTO> array = projectDAO.getMyProject(memberhsipDTO);
		for(int i=0;i<array.size();i++) {
			ProjectDTO dto = new ProjectDTO();
			dto.setMedia_id(array.get(i).getMedia_id());
			List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
			array.get(i).setMediaFiles(mDtos);
		}
		return array;
	}

	public ProjectDTO getProject(ProjectDTO projectDTO) throws Exception{
		ProjectDTO dto = new ProjectDTO();
		projectDTO = projectDAO.getProject(projectDTO);
		dto.setMedia_id(projectDTO.getMedia_id());
		List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
		projectDTO.setMediaFiles(mDtos);
		return projectDTO;
	}

	public int setUpdateProject(ProjectDTO projectDTO,HttpSession session,MultipartFile[] files) throws Exception{
		for(MultipartFile mf : files) {
			MediaDTO mediaDTO = new MediaDTO();
			String fileName = fileManager.saveProject("project", mf, session);
			System.out.println("pDto.mId"+projectDTO.getMedia_id());
			mediaDTO.setMedia_id(projectDTO.getMedia_id());
			System.out.println("mDto.mID"+mediaDTO.getMedia_id());
			String format = fileName.substring(fileName.indexOf(".")+1);
			System.out.println(format);
			
			if(format.equals("jpg") || format.equals("png") || format.equals("jpeg")) {
				mediaDTO.setDivision("photo");
			} else if(format.equals("avi") || format.equals("mp4")|| format.equals("MOV")) {
				mediaDTO.setDivision("video");
			} else {
				mediaDTO.setDivision("can not");
			}
			
			mediaDTO.setFileName(fileName);
			mediaDTO.setOrigineName(mf.getOriginalFilename());
			projectDAO.setFileInsert(mediaDTO);
		}
		System.out.println("update done");
		return projectDAO.setUpdateProject(projectDTO);
	}

	public int setDeleteProject(ProjectDTO projectDTO) throws Exception{
		return projectDAO.setDeleteProject(projectDTO);
	}
	
	
	public int setFileDelete(MediaDTO mediaDTO,HttpSession session) throws Exception{
		mediaDTO = projectDAO.getFileName(mediaDTO);
		int result = projectDAO.setFileDelete(mediaDTO);
		if(result>0) {
			fileManager.Delete("project", mediaDTO.getFileName(), session);			
		}
		
		return result;
	}
	
	
	
}
