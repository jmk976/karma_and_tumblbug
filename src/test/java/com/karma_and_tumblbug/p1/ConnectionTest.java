package com.karma_and_tumblbug.p1;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ConnectionTest extends MyAbstractTest {
	
	@Autowired
	private DataSource dataSource;
//	Main Branch Test
	
//	Member Test

	@Autowired
	private SqlSession SqlSession;
	
	@Test
	public void connectionTest() throws Exception {
		assertNotNull(SqlSession);
	}
	
}
