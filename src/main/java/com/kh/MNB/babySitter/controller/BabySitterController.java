package com.kh.MNB.babySitter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.MNB.babySitter.model.service.BabySitterService;

@Controller
public class BabySitterController
{
	@Autowired
	BabySitterService bsService;
	
	@RequestMapping("bIntro.do")
	public String bIntro() {
		return "board/baby/babyIntro";
	}
	
	@RequestMapping("sitterSuppot.do")
	public String sitterSuppot() {
		return "borad/baby/sitter_Suppot";
	}
	
	@RequestMapping("suppotInsert.do")
	public String suppotInsert() {		
		return "borad/baby/suppotInsert";
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
