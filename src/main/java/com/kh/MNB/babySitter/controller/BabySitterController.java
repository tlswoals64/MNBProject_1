package com.kh.MNB.babySitter.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.babySitter.model.service.BabySitterService;
import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;

@Controller
public class BabySitterController
{
	@Autowired
	BabySitterService bsService;
	
	@RequestMapping("bIntro.do")
	public String bIntro() {
		return "board/baby/babyIntro";
	}
	
	@RequestMapping("suppotList.do")
	public ModelAndView suppotList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = bsService.getListCount(); // 
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // 
		
		ArrayList list = bsService.selectList(pi);
		
		System.out.println("suppotList.do list : " + list); 
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("board/baby/babySitter/sitter_Suppot");
		}
		else {
			throw new BoardException("게시글 조회에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("suppotInsert.do")
	public String suppotInsert() {
		return "board/baby/babySitter/suppotInsert";
	}
	@RequestMapping("babymom.do")
	public String BabyCareList() {		
		return "board/baby/babymom/babyCareList";
	}
	@RequestMapping("babymomIn.do")
	public String babyMomIn() {		
		return "board/baby/babymom/babyMomIn";
	}
	@RequestMapping("bcdetailView.do")
	public String bcDetailView() {		
		return "board/baby/babymom/bcdetailView";
	}
	
}
