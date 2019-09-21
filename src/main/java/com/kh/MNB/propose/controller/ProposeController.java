package com.kh.MNB.propose.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.propose.model.exception.ProposeException;
import com.kh.MNB.propose.model.service.ProposeService;
import com.kh.MNB.propose.model.vo.Propose;

@Controller
public class ProposeController {
	@Autowired
	ProposeService pService;
	
	// 관리자용 QnaList
	@RequestMapping("mQnaList.do")
	public ModelAndView qnaList(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = pService.getListCount(); 

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Propose> list = pService.selectQnaList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/managerQnaListView");
		} else {
			throw new ProposeException("회원등급 리스트 불러오기에 실패했습니다.");
		}

		return mv;
	}
	
	// 관리자용 Qna디테일
	@RequestMapping("mQnADetail.do")
	public ModelAndView mQnADetail(ModelAndView mv, HttpServletRequest request) {
		int pNo = Integer.parseInt(request.getParameter("pNo"));
		
		Propose p = pService.mQnADetail(pNo);
		
		if(p != null) {
			mv.addObject("p", p);
			mv.setViewName("manager/managerQnaDetailVeiw");
		}
		else {
			throw new ProposeException("회원등급 리스트 불러오기에 실패했습니다.");
		}
		return mv;
	}
	
	// 관리자용 Qna 댓글달기
	@RequestMapping("qnaReplyAdd.do")
	public String qnaReplyAdd(ModelAndView mv, Propose p) {
		int result = pService.mQnAReplyAdd(p);
		if(result > 0) {
			return "redirect:mQnaList.do";
		}
		else {
			throw new ProposeException("회원등급 리스트 불러오기에 실패했습니다.");
		}
	}
}
