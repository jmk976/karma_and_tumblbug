package com.karma_and_tumblbug.p1.project;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.board.BoardDTO;
import com.karma_and_tumblbug.p1.membership.MembershipDTO;

@Repository
public class ProjectDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE ="com.karma_and_tumblbug.p1.project.ProjectDAO.";
	
	public List<ProjectDTO> getProjectList(ProjectDTO projectDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getProjectListWithCategory",projectDTO);
	}
	public List<ProjectDTO> getProjectList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getProjectList");
	}
	
	public Long getProjectNum() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getProjectNum");
	}
	
	public int setInsertProject(ProjectDTO projectDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsertProject", projectDTO);
	}
	
	public ProjectDTO getProject(ProjectDTO projectDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getProject", projectDTO);
	}
	
	public List<ProjectDTO> getMyProject(MembershipDTO membershipDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMyProject", membershipDTO);
	}
	
	public int setUpdateProject(ProjectDTO projectDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdateProject", projectDTO);
	}
	
	public int setDeleteProject(ProjectDTO projectDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDeleteProject", projectDTO);
	}
	
	public int setFileInsert(MediaDTO mediaDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setFileInsert",mediaDTO);
	}
	
	public List<MediaDTO> getMyMedia(ProjectDTO projectDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMyMedia", projectDTO);
	}
	
	
	public int setFileDelete(MediaDTO mediaDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setFileDelete", mediaDTO);
	}
	
	public MediaDTO getFileName(MediaDTO mediaDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFileName",mediaDTO);
	}
	
	public int setInsertSearchTag(SearchDTO searchDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsertSearchTag", searchDTO);
	}

	public List<SearchDTO> getSearchTagList(ProjectDTO projectDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearchTagList", projectDTO);
	}
	
	public int setSearchTagDelete(SearchDTO searchDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setSearchTagDelete", searchDTO);
	}
	
	public List<BoardDTO> getCommunity(BoardDTO boardDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCommunity", boardDTO);
	}

	
	
}
