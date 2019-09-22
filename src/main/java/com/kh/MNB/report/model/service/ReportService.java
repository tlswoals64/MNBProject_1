package com.kh.MNB.report.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.report.model.vo.Report;

public interface ReportService {

	int getListCount();

	ArrayList<Report> selectmReportList(PageInfo pi); // 관리자용

	Report mReportDetail(int rNo);

	int mDerefuse(int rNo);

	int mDeBApply(int bNo);

	int mDeMApply(String userId);

	int mDeRApply(int rNo);

	int selectDec(String userId);

	void mDeMemberUpdate(String userId);


	
}
