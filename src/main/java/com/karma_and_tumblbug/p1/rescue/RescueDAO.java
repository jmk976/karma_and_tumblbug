package com.karma_and_tumblbug.p1.rescue;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.sponsor.SponsorDTO;
import com.karma_and_tumblbug.p1.util.Pager;



@Repository
public class RescueDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.karma_and_tumblbug.p1.rescue.RescueDAO.";
	
    public List<RescueDTO> getList(RescueDTO rescueDTO) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"getList", rescueDTO);
	}
	
	public int setUpdate(RescueDTO rescueDTO) throws Exception {
				return sqlSession.update(NAMESPACE+"setUpdate", rescueDTO);
	}
	
	public int setDelete(RescueDTO rescueDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", rescueDTO);
	}
	
	public RescueDTO getSelect(RescueDTO rescueDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", rescueDTO);
	}
	
	public int setInsert(RescueDTO rescueDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", rescueDTO);
	}

}
