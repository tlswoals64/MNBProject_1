package com.kh.MNB.chat.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.chat.model.exception.ChatException;
import com.kh.MNB.chat.model.service.ChatService;
import com.kh.MNB.member.model.vo.Member;

@Controller
public class ChatController
{
	@Autowired
	ChatService cService;
	
	@RequestMapping("chat.do")
	public ModelAndView viewChattingPage(HttpSession session, ModelAndView mv) {
		Member m = (Member)session.getAttribute("loginUser");
		if(m != null) {
            mv.addObject("m", m);
            mv.setViewName("chat/chat");
         }
         else {
            throw new ChatException("로그인된 회원만 사용가능합니다.");
         }
		return mv;
	}
	
	
}
