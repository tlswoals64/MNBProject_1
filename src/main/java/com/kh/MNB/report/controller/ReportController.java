package com.kh.MNB.report.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.MNB.report.model.service.ReportService;

@Controller
public class ReportController {
	@Autowired
	ReportService rService;
	
	
}
