package com.karma_and_tumblbug.p1.project;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE ="com.karma_and_tumblbug.p1.project.ProjectDAO.";
	
	public List<ProjectDTO> getProjectList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getProjectList");
	}
}
