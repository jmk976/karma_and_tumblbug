package com.karma_and_tumblbug.p1.adopt;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdoptDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.karma_and_tumblbug.p1.adopt.AdoptDAO.";
	
	public int setInsert(AdoptDTO adoptDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", adoptDTO);
	}
	
	public AdoptDTO getSelect(AdoptDTO adoptDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", adoptDTO);
	}

}
