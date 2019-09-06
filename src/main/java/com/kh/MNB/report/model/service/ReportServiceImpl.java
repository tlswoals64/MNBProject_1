package com.kh.MNB.report.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.report.model.dao.ReportDAO;
import com.kh.MNB.report.model.vo.Report;

@Service("rService")
public class ReportServiceImpl implements ReportService {
	
	@Autowired
	ReportDAO rDAO;
	
	@Override
	public int getListCount() {
		return rDAO.getListCount();
	}
	
	@Override
	public ArrayList<Report> selectmReportList(PageInfo pi) {
		return rDAO.selectmemberLevelList(pi);
	}
	
	@Override
	public Report mReportDetail(int rNo) {
		return rDAO.mReportDetail(rNo);
	}
}
