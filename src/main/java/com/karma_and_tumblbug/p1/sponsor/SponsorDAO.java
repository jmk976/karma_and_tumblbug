package com.karma_and_tumblbug.p1.sponsor;

import java.awt.print.Paper;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.util.Pager;

@Repository
public class SponsorDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.karma_and_tumblbug.p1.sponsor.SponsorDAO.";
	
	public List<SponsorDTO> getList(Pager pager) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}
	
	public List<SponsorDTO> getListMon(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getListMon", pager);
	}
	
	public Long getTotalSumMon(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalSumMon", pager);	
	}
	
	public Long getTotalCountMon(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalCountMon", pager);
	}

	
	public Long getTotalSum(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalSum", pager);
	}
	
	public Long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalCount", pager);
	}
	
	public int setInsert(SponsorDTO sponsorDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", sponsorDTO);
	}
	
	
	public SponsorDTO getSelect(SponsorDTO sponsorDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", sponsorDTO);
	}

}
