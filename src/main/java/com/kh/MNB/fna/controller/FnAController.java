package com.kh.MNB.fna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.MNB.board.model.service.BoardService;

@Controller
public class FnAController {
	@Autowired
	BoardService bService;
	
	
}
