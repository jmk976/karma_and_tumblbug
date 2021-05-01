package com.karma_and_tumblbug.p1.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE ="com.karma_and_tumblbug.p1.board.BoardDAO.";
	
}
