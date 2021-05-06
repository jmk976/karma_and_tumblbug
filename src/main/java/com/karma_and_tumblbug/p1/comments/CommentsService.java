package com.karma_and_tumblbug.p1.comments;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentsService {
	
	@Autowired
	private CommentsDAO commentsDAO;
	
	public int setInsert(CommentsDTO commentsDTO)throws Exception{
		return commentsDAO.setInsert(commentsDTO);
	}
	
	public List<CommentsDTO> getList(CommentsDTO commentsDTO)throws Exception{
		return commentsDAO.getList(commentsDTO);
	}

	public int setDelete(int [] commentNum)throws Exception{
		int result = 0;
		for(int i=0;i<commentNum.length;i++) {
			CommentsDTO commentsDTO = new CommentsDTO();
			int num = commentNum[i];
			commentsDTO.setCommentNum(num);
			result = commentsDAO.setDelete(commentsDTO);
		}
		 return result;
	}
}
