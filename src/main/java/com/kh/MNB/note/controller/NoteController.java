package com.kh.MNB.note.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.babySitter.model.vo.sitterSuppot;
import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.note.model.exception.NoteException;
import com.kh.MNB.note.model.service.NoteService;
import com.kh.MNB.note.model.vo.Note;

@Controller
public class NoteController {
	@Autowired
	NoteService ntService;
	
	@RequestMapping("noteList.do")
	public ModelAndView noteList(@RequestParam(value = "page", required = false) Integer page, HttpSession session, ModelAndView mv) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String user = loginUser.getUserId();
		
		int sendlistCount = ntService.SendNoteListCount(user);
		int responlistCount = ntService.ResponNoteListCount(user);
		
		PageInfo sendPi = Pagination.getPageInfo(currentPage, sendlistCount);
		PageInfo responPi = Pagination.getPageInfo(currentPage, responlistCount);
		
		ArrayList<Note> sendList = ntService.selectSendNoteList(sendPi, user);
		ArrayList<Note> responList = ntService.selectResponNoteList(responPi, user);
		
		if(sendList != null && responList != null) {
			mv.addObject("sendList", sendList).addObject("responList", responList);
			mv.addObject("sendPi", sendPi).addObject("responPi", responPi);
			mv.setViewName("note/noteList");
		} else {
			throw new NoteException("쪽지 전체 조회에 실패하였습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("noteInsertForm.do")
	public ModelAndView noteInsertForm(@RequestParam("bWriter") String writer, ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		Member Respone = ntService.selectRespone(writer);
		
		System.out.println(loginUser);
		System.out.println(Respone);
		
		mv.addObject("loginUser", loginUser).addObject("respon",Respone).setViewName("note/noteInsert");
		
		return mv;
	}
	
	@RequestMapping("noteInsert.do")
	public String noteInsert(@ModelAttribute Note note, @RequestParam(value = "respone", required = false) String writer) {
		int result = 0;
		System.out.println(note);
		if(writer != null) {
			Member respone = ntService.selectRespone(writer);
			note.setRespon(respone.getUserId());
			result = ntService.insertNote(note);
		} else {
			result = ntService.insertNote(note);
		}
		
		if(result > 0) {
			return "redirect:noteList.do";
		} else {
			throw new BoardException("쪽지 보내기에 실패하였습니다.");
		}
	}
	
	@RequestMapping("ndetail.do")
	public ModelAndView notedetail(@RequestParam("nNo") int nNo, @RequestParam("page") int page, ModelAndView mv) {
		ntService.updateRead(nNo);
		Note note = ntService.detailNote(nNo);
		
		if(note != null) {
			mv.addObject("note", note)
			.addObject("page", page)
			.setViewName("note/noteDetail");
		} else {
			throw new BoardException("쪽지 상세보기에 실패하였습니다.");
		}
		
		return mv;
	}
}
