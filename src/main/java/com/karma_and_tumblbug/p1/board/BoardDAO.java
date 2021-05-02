package com.karma_and_tumblbug.p1.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.util.Pager;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE ="com.karma_and_tumblbug.p1.board.BoardDAO.";
	
	public List<BoardDTO> getList(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}
	
	public int setInsert(BoardDTO boardDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", boardDTO);
	}
	
	public long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalCount",pager);
	}
	
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", boardDTO);
	}
	
	public int setHitUpdate(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setHitUpdate", boardDTO);
	}
	public int setDelete(BoardDTO boardDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", boardDTO);
	}
	public int setUpdate(BoardDTO boardDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdate", boardDTO);
	}
}
