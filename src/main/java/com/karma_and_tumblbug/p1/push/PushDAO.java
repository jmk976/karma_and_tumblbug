package com.karma_and_tumblbug.p1.push;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PushDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.karma_and_tumblbug.p1.push.PushDAO.";
	
	public String getProjectPush(PushDTO pushDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getProjectPush", pushDTO);
	}
	
	public int setInsertPush(PushDTO pushDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsertPush", pushDTO);
	}
	
	public List<PushDTO> getPushList(PushDTO pushDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPushList", pushDTO);
	}
	
	
	public int setDeletePush(PushDTO pushDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDeletePush", pushDTO);
	}
}
