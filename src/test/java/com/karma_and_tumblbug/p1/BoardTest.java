package com.karma_and_tumblbug.p1;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.karma_and_tumblbug.p1.board.BoardDAO;
import com.karma_and_tumblbug.p1.board.BoardDTO;

public class BoardTest extends MyAbstractTest {
	
	@Autowired
	private BoardDAO boardDAO;
//	Main Branch Test
	
//	Member Test

	@Test
	public void setInsertBoard() throws Exception{
		for(int i=0; i<120;i++) {

			BoardDTO dto = new BoardDTO();
			dto.setBoardSort("notice");
			dto.setId("admin");
			dto.setWriter("admin");
			dto.setTitle("title"+i);
			dto.setContents("contents"+i);
			int result = boardDAO.setInsert(dto);
			if(i%10==0) {
				Thread.sleep(500);
			}
		}
	}
	
}
