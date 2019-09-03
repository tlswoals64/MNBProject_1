package com.kh.MNB.report.model.vo;

import java.sql.Date;

public class Report {

	private int rNo; // 신고번호
	private String rContent; // 신고내용
	private String rMan; // 피고인
	private String status; // 상태
	private String rRe; // 확인여부
	private Date rDate; // 신고날짜
	private int bNo; // 게시글 번호
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrMan() {
		return rMan;
	}
	public void setrMan(String rMan) {
		this.rMan = rMan;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getrRe() {
		return rRe;
	}
	public void setrRe(String rRe) {
		this.rRe = rRe;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	
	public Report() {
		super();
	}
	
	public Report(int rNo, String rContent, String rMan, String status, String rRe, Date rDate, int bNo) {
		super();
		this.rNo = rNo;
		this.rContent = rContent;
		this.rMan = rMan;
		this.status = status;
		this.rRe = rRe;
		this.rDate = rDate;
		this.bNo = bNo;
	}
	
	@Override
	public String toString() {
		return "Report [rNo=" + rNo + ", rContent=" + rContent + ", rMan=" + rMan + ", status=" + status + ", rRe="
				+ rRe + ", rDate=" + rDate + ", bNo=" + bNo + "]";
	}
	
	
}
