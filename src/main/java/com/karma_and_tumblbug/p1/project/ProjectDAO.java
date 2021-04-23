package com.karma_and_tumblbug.p1.project;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;

@Repository
public class ProjectDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE ="com.karma_and_tumblbug.p1.project.ProjectDAO.";
	
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
	
}
