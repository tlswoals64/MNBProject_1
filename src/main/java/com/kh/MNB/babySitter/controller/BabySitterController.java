package com.kh.MNB.babySitter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.babySitter.model.service.BabySitterService;
import com.kh.MNB.member.model.vo.Member;

@Controller
public class BabySitterController
{
	@Autowired
	BabySitterService bsService;
	
	@RequestMapping("bIntro.do")
	public String bIntro() {
		return "borad/baby/babyIntro";
	}
	
	@RequestMapping("sitterSuppot.do")
	public String sitterSuppot() {
		
		return "babySitter/sitter_Suppot";
	}
	
	
	@RequestMapping("suppotInsert.do")
	public String suppotInsert() {
		
		return "babySitter/suppotInsert";
	}
	
	
}
