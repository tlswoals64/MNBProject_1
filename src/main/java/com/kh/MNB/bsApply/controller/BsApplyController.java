package com.kh.MNB.bsApply.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.MNB.bsApply.model.service.BsApplyService;

@Controller
public class BsApplyController
{
	@Autowired
	BsApplyService bsaService;
	
	
}
