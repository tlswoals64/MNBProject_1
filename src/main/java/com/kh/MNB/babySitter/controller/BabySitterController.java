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
		return "borad/baby/babyIntro";
	}
	
}
