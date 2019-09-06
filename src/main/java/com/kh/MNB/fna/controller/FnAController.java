package com.kh.MNB.fna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
}
