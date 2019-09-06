package com.kh.MNB.report.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.report.model.exception.ReportException;
import com.kh.MNB.report.model.service.ReportService;
import com.kh.MNB.report.model.vo.Report;

@Controller
public class ReportController {
	@Autowired
	ReportService rService;
	
	// 관리자용 Report리스트 출력
	@RequestMapping("mDeList.do")
	public ModelAndView mDeList(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = rService.getListCount(); 

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Report> list = rService.selectmReportList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/managerDeListView");
		} else {
			throw new ReportException("회원등급 리스트 불러오기에 실패했습니다.");
		}

		return mv;
	}
	
	@RequestMapping("mReportDetail.do")
	public ModelAndView mReportDetail(HttpServletRequest request, ModelAndView mv) {
		int rNo = Integer.parseInt(request.getParameter("rNo"));
		System.out.println("rNo : " + rNo);
		
		Report r = rService.mReportDetail(rNo);
		System.out.println("r : " + r);
		
		if(r != null) {
			mv.addObject("r", r);
			mv.setViewName("manager/manaDeDetailView");
		}
		else {
			throw new ReportException("회원 리스트 불러오기에 실패했습니다.");
		}
		return mv;
	}
}
