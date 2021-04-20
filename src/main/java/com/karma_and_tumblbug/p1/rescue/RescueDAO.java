package com.karma_and_tumblbug.p1.rescue;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RescueDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.karma_and_tumblbug.p1.rescue.RescueDAO.";
	
	public int setInsert(RescueDTO rescueDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", rescueDTO);
	}

}
