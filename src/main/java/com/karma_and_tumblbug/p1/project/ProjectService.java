package com.karma_and_tumblbug.p1.project;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.karma_and_tumblbug.p1.board.BoardDTO;
import com.karma_and_tumblbug.p1.membership.MembershipDTO;
import com.karma_and_tumblbug.p1.push.PushDAO;
import com.karma_and_tumblbug.p1.push.PushDTO;
import com.karma_and_tumblbug.p1.util.FileManager;

@Service
public class ProjectService {

	@Autowired
	private ProjectDAO projectDAO;

	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private PushDAO pushDAO;


	public String setSummerFileUpload(ProjectDTO projectDTO, MultipartFile file,HttpSession session) throws Exception{

		String fileName = fileManager.saveProject("project/s", file, session);
		System.out.println(fileName);
		return fileName;

	}


	public boolean setSummerFileDelete(ProjectDTO projectDTO, String fileName,HttpSession session) throws Exception{
		boolean result = fileManager.Delete("project/s", fileName, session);
		return result;
	}

	public List<ProjectDTO> getProjectList(ProjectDTO projectDTO)throws Exception{
		List<ProjectDTO> array;
		if(projectDTO.getCategory()==null) {
			array = projectDAO.getProjectList();
			for(int i=0;i<array.size();i++) {
				ProjectDTO dto = new ProjectDTO();
				dto.setMedia_id(array.get(i).getMedia_id());
				List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
				array.get(i).setMediaFiles(mDtos);
//				
				PushDTO pushDTO = new PushDTO();
				pushDTO.setProjectNum(array.get(i).getNum());
				String amount = pushDAO.getProjectPush(pushDTO);
				
				System.out.println(amount);
				System.out.println(amount==null);
				long num=0;
				if(amount == null) {
					num=0;
				} else {
					num=Long.parseLong(amount);
				}
				array.get(i).setPushAmount(num);
//				
			}
		} else {
			array = projectDAO.getProjectList(projectDTO);
			for(int i=0;i<array.size();i++) {
				ProjectDTO dto = new ProjectDTO();
				dto.setMedia_id(array.get(i).getMedia_id());
				List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
				array.get(i).setMediaFiles(mDtos);
//				
				PushDTO pushDTO = new PushDTO();
				pushDTO.setProjectNum(array.get(i).getNum());
				String amount = pushDAO.getProjectPush(pushDTO);
				System.out.println(amount);
				long num=0;
				if(amount==null) {
					num=0;
				} else {
					num=Long.parseLong(amount);
				}
				array.get(i).setPushAmount(num);
//				
			}
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
			
			PushDTO pushDTO = new PushDTO();
			pushDTO.setProjectNum(array.get(i).getNum());
			String amount = pushDAO.getProjectPush(pushDTO);
			System.out.println(amount);
			long num=0;
			if(amount==null) {
				num=0;
			} else {
				num=Long.parseLong(amount);
			}
			array.get(i).setPushAmount(num);
		}
		return array;
	}

	public ProjectDTO getProject(ProjectDTO projectDTO) throws Exception{
		ProjectDTO dto = new ProjectDTO();
		projectDTO = projectDAO.getProject(projectDTO);
		dto.setMedia_id(projectDTO.getMedia_id());
		List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
		List<SearchDTO> sDtos = projectDAO.getSearchTagList(projectDTO);
		projectDTO.setMediaFiles(mDtos);
		projectDTO.setSearchList(sDtos);
		return projectDTO;
	}

	public int setUpdateProject(ProjectDTO projectDTO,HttpSession session,MultipartFile files) throws Exception{
			
			System.out.println("OrigineName"+files.getOriginalFilename());
			MediaDTO mediaDTO = new MediaDTO();
			String fileName = fileManager.saveProject("project/f/"+projectDTO.getNum(), files, session);
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
			mediaDTO.setOrigineName(files.getOriginalFilename());
			projectDAO.setFileInsert(mediaDTO);
		System.out.println("update done");
		return projectDAO.setUpdateProject(projectDTO);
	}

	public int setDeleteProject(ProjectDTO projectDTO) throws Exception{
		return projectDAO.setDeleteProject(projectDTO);
	}
	
	
	public int setFileDelete(ProjectDTO projectDTO, MediaDTO mediaDTO,HttpSession session) throws Exception{
		System.out.println("SERVICE PROJECT_NUM:"+projectDTO.getNum());
		mediaDTO = projectDAO.getFileName(mediaDTO);
		int result = projectDAO.setFileDelete(mediaDTO);
		if(result>0) {
			fileManager.Delete("project/f/"+projectDTO.getNum(), mediaDTO.getFileName(), session);			
		}
		
		return result;
	}
	
	public List<ProjectDTO> getAdminProjectCheck()throws Exception{
		List<ProjectDTO> array = projectDAO.getProjectList();
		for(int i=0;i<array.size();i++) {
			ProjectDTO dto = new ProjectDTO();
			dto.setMedia_id(array.get(i).getMedia_id());
			List<MediaDTO> mDtos = projectDAO.getMyMedia(dto);
			array.get(i).setMediaFiles(mDtos);
		}
		return array;
	}
	
	public int setStateUpdate(ProjectDTO projectDTO) throws Exception{
		return projectDAO.setUpdateProject(projectDTO);
	}
	
	public void setInsertSearchTag(ProjectDTO projectDTO,String searchTag) throws Exception{
		if(searchTag!=null) {
			
			String[] array = searchTag.split(",");
			for(int i=0;i<array.length;i++) {
				SearchDTO searchDTO = new SearchDTO();
				searchDTO.setSearch_id(projectDTO.getSearch_id());
				searchDTO.setSearchTag(array[i]);
				projectDAO.setInsertSearchTag(searchDTO);
			}
		}
	}
	
	public int setSearchTagDelete(SearchDTO searchDTO) throws Exception{
		return projectDAO.setSearchTagDelete(searchDTO);
	}
	
	
	public List<BoardDTO> getCommunity(BoardDTO boardDTO) throws Exception{
		return projectDAO.getCommunity(boardDTO);
	}
	
	
	
}
