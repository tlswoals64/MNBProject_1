package com.kh.MNB.report.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.report.model.vo.Report;

public interface ReportService {

	int getListCount();

	ArrayList<Report> selectmReportList(PageInfo pi); // 관리자용

	Report mReportDetail(int rNo);
	
	
	
}
