package com.kh.MNB.report.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.report.model.dao.ReportDAO;

@Service("rService")
public class ReportServiceImpl implements ReportService {
	
	@Autowired
	ReportDAO rDAO;
	
	
}
