package com.karma_and_tumblbug.p1.adopt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.rescue.RescueDTO;
import com.karma_and_tumblbug.p1.util.Pager;

@Repository
public class AdoptDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.karma_and_tumblbug.p1.adopt.AdoptDAO.";
	
	public int setUpdate(AdoptDTO adoptDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", adoptDTO);
	}
	
	public int setDelete(AdoptDTO adoptDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", adoptDTO);
	}
	
	public Long getTotalCount(Pager pager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getTotalCount", pager);
	}
	
	public List<AdoptDTO> getList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}
	
	public int setInsert(AdoptDTO adoptDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", adoptDTO);
	}
	
	public AdoptDTO getSelect(AdoptDTO adoptDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", adoptDTO);
	}

}
