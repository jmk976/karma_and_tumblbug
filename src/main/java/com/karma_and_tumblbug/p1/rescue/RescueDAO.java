package com.karma_and_tumblbug.p1.rescue;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
public class RescueDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.karma_and_tumblbug.p1.rescue.RescueDAO.";
	
    public Long getTotalCount(RescueDTO rescueDTO)throws Exception{
       return sqlSession.selectOne(NAMESPACE+"getTotalCount", rescueDTO);
    }
	public List<RescueDTO> getList(RescueDTO rescueDTO) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"getList", rescueDTO);
	}
	
	public int setUpdate(RescueDTO rescueDTO) throws Exception {
		System.out.println("rescueDAO의 setupdate:"+ rescueDTO.getSn());
		int result= sqlSession.update(NAMESPACE+"setUpdate", rescueDTO);
		System.out.println("rescueDAO의 setupdate의 sql 후 :"+ rescueDTO.getSn());
		return result;
	}
	public RescueFileDTO getFileSelect(RescueFileDTO rescueFileDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFileSelect", rescueFileDTO);
	}
	
	public int setFileDelete(RescueFileDTO rescueFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setFileDelete", rescueFileDTO);
	}
	
	public int setFileUpdate(RescueFileDTO rescueFileDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setFileUpdate", rescueFileDTO);
	}
	
	public int setDelete(RescueDTO rescueDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", rescueDTO);
	}
	
	public RescueDTO getSelect(RescueDTO rescueDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", rescueDTO);
	}
	
	public RescueFileDTO getSelectFile(RescueDTO rescueDTO)throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"getSelectFile", rescueDTO);
	}
	
	public int setInsert(RescueDTO rescueDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", rescueDTO);
	}
	
	public int setFileInsert(RescueFileDTO rescueFileDTO)throws Exception {
		return sqlSession.insert(NAMESPACE+"setFileInsert", rescueFileDTO);
		
	}

}
