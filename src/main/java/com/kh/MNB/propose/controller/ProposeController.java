package com.kh.MNB.propose.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.MNB.propose.model.service.ProposeService;

@Controller
public class ProposeController {
	@Autowired
	ProposeService pService;
	
	
}
