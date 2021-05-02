package com.karma_and_tumblbug.p1.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.karma_and_tumblbug.p1.util.FileManager;
import com.karma_and_tumblbug.p1.util.Pager;

@Service
public class BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private HttpSession session;
	
	
	public boolean setSummerFileDelete(String fileName) throws Exception{
		boolean result = fileManager.Delete("notice", fileName, session);
		return result;
	}
	
	
	public String setSummerFileUpload(MultipartFile file) throws Exception{
		
		String fileName = fileManager.save("notice", file, session);
		return fileName;
		
	}
	
	public List<BoardDTO> getList(Pager pager) throws Exception{

		long totalCount = boardDAO.getTotalCount(pager);
		System.out.println(totalCount);
		pager.makeRow();
		pager.makeNum(totalCount);
		
		return boardDAO.getList(pager);
	}
	
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception{
		boardDAO.setHitUpdate(boardDTO);
		return boardDAO.getSelect(boardDTO);
	}
	
	public int setInsert(BoardDTO boardDTO) throws Exception{
		return boardDAO.setInsert(boardDTO);
	}
	
	public int setDelete(BoardDTO boardDTO) throws Exception{
		return boardDAO.setDelete(boardDTO);
	}
	public int setUpdate(BoardDTO boardDTO) throws Exception{
		return boardDAO.setUpdate(boardDTO);
	}
}
