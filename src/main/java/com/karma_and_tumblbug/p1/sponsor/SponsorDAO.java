package com.karma_and_tumblbug.p1.sponsor;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SponsorDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.karma_and_tumblbug.p1.sponsor.SponsorDAO.";
	
	public int setInsert(SponsorDTO sponsorDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", sponsorDTO);
	}
	
	
	public SponsorDTO getSelect(SponsorDTO sponsorDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", sponsorDTO);
	}

}
