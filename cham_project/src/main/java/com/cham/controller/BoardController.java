package com.cham.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cham.domain.BoardVO;
import com.cham.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	
//	@GetMapping("/boardList")
//	public void getBoardList() throws Exception {
//		
//	}
	
	//게시물 목록
	@GetMapping("/boardList")
	public String getBoardList(Model model) throws Exception {
		List<BoardVO> boardList = service.boardList();
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}

}
