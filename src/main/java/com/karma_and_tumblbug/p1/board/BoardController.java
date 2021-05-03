package com.karma_and_tumblbug.p1.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.karma_and_tumblbug.p1.util.Pager;

@Controller
@RequestMapping(value="/board/**")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@PostMapping(value="summerFileDelete")
	public ModelAndView setSummerFileDelete(String fileName) throws Exception{
		ModelAndView mv  = new ModelAndView();
		boolean result = boardService.setSummerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	@PostMapping(value="summerFileUpload")
	public ModelAndView setSummerFileUpload(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("summerfileUpload");
		System.out.println(file.getOriginalFilename());
		String fileName = boardService.setSummerFileUpload(file);
		fileName="../resources/upload/notice/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@GetMapping(value="boardList")
	public ModelAndView getList(Pager pager)throws Exception{
		List<BoardDTO> array = boardService.getList(pager);
		ModelAndView mv = new ModelAndView();
		mv.addObject("sort", pager.getBoardSort());
		mv.addObject("board", array);
		mv.setViewName("board/boardList");
		return mv;
	}
	
	@GetMapping(value="boardInsert")
	public ModelAndView setInsrt(String boardSort) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("sort", boardSort);
		mv.setViewName("board/boardInsert");
		return mv;
	}
	
	@PostMapping(value="boardInsert")
	public String setInsert(BoardDTO boardDTO,Model model) throws Exception{
		int result = boardService.setInsert(boardDTO);
		String message = "실패";
		String path = "./boardList?boardSort="+boardDTO.getBoardSort();
		if(result>0) {
			message="성공";
		}
		model.addAttribute("msg", message);
		model.addAttribute("path", path);
		return "common/commonResult";
	}
	
	@GetMapping(value="boardSelect")
	public ModelAndView getSelect(BoardDTO boardDTO,String boardSort) throws Exception{
		boardDTO = boardService.getSelect(boardDTO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", boardDTO);
		mv.addObject("sort", boardSort);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}
	
	@GetMapping(value="boardDelete")
	public ModelAndView setDelete(BoardDTO boardDTO) throws Exception{
		int result = boardService.setDelete(boardDTO);
		ModelAndView mv = new ModelAndView();
		String message = "실패";
		String path = "./boardList?boardSort="+boardDTO.getBoardSort();
		if(result>0) {
			message = "성공";
		}
		mv.addObject("msg", message);
		mv.addObject("path", path);
		mv.setViewName("common/commonResult");
		return mv;
	}
	
	
	@GetMapping(value="boardUpdate")
	public ModelAndView setUpdate(BoardDTO boardDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		boardDTO = boardService.getSelect(boardDTO);
		mv.addObject("dto", boardDTO);
		mv.addObject("board", boardDTO.getBoardSort());
		mv.setViewName("board/boardUpdate");
		
		return mv;
	}
	
	
	@PostMapping(value="boardUpdate")
	public ModelAndView setUpdate(BoardDTO boardDTO,ModelAndView mv) throws Exception{
		int result = boardService.setUpdate(boardDTO);
		if(result>0) {
			mv.setViewName("redirect:./boardList?boardSort="+boardDTO.getBoardSort());
		}else {
			mv.addObject("msg", "실패");
			mv.addObject("path", "./boardList?boardSort="+boardDTO.getBoardSort());
			mv.setViewName("common/commonResult");
		}
		return mv;
	}
	
	@PostMapping(value="projectBoardInsert")
	public String setInsertProjectBoard(BoardDTO boardDTO,Model model,long num) throws Exception{
		System.out.println("cont-contents"+boardDTO.getContents());
		int result = boardService.setInsert(boardDTO);
		String message = "실패";
		String path = "/p1/project/projectSelect?num="+num;
		if(result>0) {
			message="성공";
		}
		model.addAttribute("msg", message);
		model.addAttribute("path", path);
		return "common/commonResult";
	}
	
	
}
