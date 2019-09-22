package com.kh.MNB.likeTb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.likeTb.model.service.LikeService;
import com.kh.MNB.likeTb.model.vo.LikeTb;
import com.kh.MNB.member.model.vo.Member;

@Controller
public class LikeController {
	@Autowired
	LikeService lService;
	
	@RequestMapping("likeCheck.do")
	public void likeCheck(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		int bNo = Integer.parseInt(request.getParameter("bNo"));
		LikeTb b = new LikeTb();
		Member m = (Member)session.getAttribute("loginUser");
		b.setUserId(m.getUserId());
		b.setbNo(bNo);
		int l = lService.likeCheck(b);
		System.out.println("like했니? : " + l);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(l, response.getWriter());

	}
	
	@RequestMapping("likeAddBoard.do")
	public void likeAddBoard(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int bNo = Integer.parseInt(request.getParameter("bNo"));
		LikeTb lk = new LikeTb();
		Member m = (Member)session.getAttribute("loginUser");
		lk.setUserId(m.getUserId());
		lk.setbNo(bNo);
		int l = lService.likeAddBoard(lk);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(l, response.getWriter());

	}	
		@RequestMapping("likeCancleBoard.do")
	public void likeCancleBoard(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int bNo = Integer.parseInt(request.getParameter("bNo"));
		LikeTb lk = new LikeTb();
		Member m = (Member)session.getAttribute("loginUser");
		lk.setUserId(m.getUserId());
		lk.setbNo(bNo);
		int l = lService.likeCancleBoard(lk);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(l, response.getWriter());

	}
}
