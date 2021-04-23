package com.karma_and_tumblbug.p1.profile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE= "com.karma_and_tumblbug.p1.profile.ProfileDAO.";
	
	public int setInsert(ProfileDTO profileDTO)throws Exception{
		int result = sqlSession.insert(NAMESPACE+"setInsert", profileDTO);
		return result;
	}
	
	public int setUpdate(ProfileDTO profileDTO)throws Exception{
		int result = sqlSession.update(NAMESPACE+"setUpdate", profileDTO);
		return result;
	}
	
	public int setFileInsert(ProfilePicDTO picDTO)throws Exception{
		int result = sqlSession.insert(NAMESPACE+"setFileInsert", picDTO);
		return result;
	}
	
	public ProfileDTO getprofileCheck(ProfileDTO profileDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getprofileCheck", profileDTO);
		
	}
	
	
}
