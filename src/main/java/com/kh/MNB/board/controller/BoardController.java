package com.kh.MNB.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.MNB.board.model.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService bService;
	
	@RequestMapping("cIntro.do")
	public String bIntro() {
		return "board/community/communityIntro";

	}
	
	@RequestMapping("nBoard.do")
	public String nBoard() {
		return "board/community/nanumView";
	}
	
	@RequestMapping("inBoard.do")
	public String inBoard() {
		return "board/community/nanumInsertView";
	}
	
	@RequestMapping("dBoard.do")
	public String dBoard() {
		return "board/community/nanumDetailView";
	}
}
