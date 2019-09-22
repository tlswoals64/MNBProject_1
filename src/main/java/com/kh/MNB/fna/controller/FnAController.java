package com.kh.MNB.fna.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.fna.model.exception.FnAException;
import com.kh.MNB.fna.model.service.FnAService;
import com.kh.MNB.fna.model.vo.FnA;

@Controller
public class FnAController {
	@Autowired
	FnAService fService;
	
	@RequestMapping("fListView.do")
	public ModelAndView fIntro(ModelAndView mv) {
		System.out.println("123");
		ArrayList<FnA> fList = fService.fIntro();
		System.out.println(fList);
		
		if(fList != null) {
			mv.addObject("fList",fList);
			mv.setViewName("fna/fnaListView");
		}

		return mv;
	}
	
	@RequestMapping("mFaqList.do")
	public ModelAndView mFaqList(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = fService.getFaqListCount(); 

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<FnA> list = fService.selectFaQList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/manaFAQListView");
		} else {
			throw new FnAException("faQ 리스트 불러오기에 실패했습니다.");
		}

		return mv;
	}
	
	@RequestMapping("mfanInsertView.do")
	public String mfanUpdateView() {
		return "fna/manafnaInsertViwe";
	}
	
	@RequestMapping("mFaqInsert.do")
	public String mFaqInsert(FnA f) {
		int result = fService.mFaqInsert(f);
		return "redirect:mFaqList.do";
	}
	
	@RequestMapping("mfNaDetail.do")
	public ModelAndView mfNaDetail(HttpServletRequest request, ModelAndView mv) {
		int fNo = Integer.parseInt(request.getParameter("fNo"));
		FnA f = fService.selectmfNaDetail(fNo);
		if(f != null) {
			mv.addObject("f", f);
			mv.setViewName("fna/manafanDetailView");
		}
		else {
			throw new FnAException("fna 글 보기에 실패했습니다");
		}
		return mv;
	}
	
	@RequestMapping("mFaqUpdateView.do")
	public ModelAndView mFaqUpdateView(ModelAndView mv, FnA f) {
		mv.addObject("f", f);
		mv.setViewName("fna/manafanUpdateView");
		return mv;
		
	}
	
	
	 @RequestMapping("mFaqUpdate.do") 
	 public String mFaqUpdate(ModelAndView mv, FnA f) {
		 int result = fService.mFaqUpdate(f);
		 return "redirect:mFaqList.do";
	 }
	 
	 @RequestMapping("mFaQdelete.do")
	 public String mFaQdelete(HttpServletRequest request) {
		 int fNo = Integer.parseInt(request.getParameter("fNo"));
		 int result = fService.mFaQdelete(fNo);
		 return "redirect:mFaqList.do";
	 }
	 
}
