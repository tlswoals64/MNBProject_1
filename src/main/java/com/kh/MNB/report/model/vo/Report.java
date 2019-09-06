package com.kh.MNB.report.model.vo;

import java.sql.Date;

public class Report {

	private int rNo; // 신고번호
	private String rContent; // 신고내용
	private String rMan; // 피고인
	private String rRe; // 확인여부
	private Date rDate; // 관리자가 처리한 날짜
	private int rType; // 신고유형
	private int bNo; // 게시글 번호
	private String bTitle; // 게시글 제목
	private String bWriter; //게시글 작성자
	private String bContent; // 게시글 내용
	private int bCount; // 조회수
	private Date b_CreateDate; //생성날짜
	private Date b_ModifyDate; // 수정날짜
	private String status; //상태
	
	
	public int getrType() {
		return rType;
	}
	public void setrType(int rType) {
		this.rType = rType;
	}
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
	
	
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbWriter() {
		return bWriter;
	}
	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public int getbCount() {
		return bCount;
	}
	public void setbCount(int bCount) {
		this.bCount = bCount;
	}
	public Date getB_CreateDate() {
		return b_CreateDate;
	}
	public void setB_CreateDate(Date b_CreateDate) {
		this.b_CreateDate = b_CreateDate;
	}
	public Date getB_ModifyDate() {
		return b_ModifyDate;
	}
	public void setB_ModifyDate(Date b_ModifyDate) {
		this.b_ModifyDate = b_ModifyDate;
	}
	public Report(int rNo, String rContent, String rMan, String status, String rRe, Date rDate, int bNo, String bTitle,
			String bWriter, String bContent, int bCount, Date b_CreateDate, Date b_ModifyDate) {
		super();
		this.rNo = rNo;
		this.rContent = rContent;
		this.rMan = rMan;
		this.status = status;
		this.rRe = rRe;
		this.rDate = rDate;
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.b_CreateDate = b_CreateDate;
		this.b_ModifyDate = b_ModifyDate;
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
	
	public Report(int rNo, String rContent, String rMan, String rRe, Date rDate, int rType, int bNo, String bTitle,
			String bWriter, String bContent, int bCount, Date b_CreateDate, Date b_ModifyDate, String status) {
		super();
		this.rNo = rNo;
		this.rContent = rContent;
		this.rMan = rMan;
		this.rRe = rRe;
		this.rDate = rDate;
		this.rType = rType;
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.b_CreateDate = b_CreateDate;
		this.b_ModifyDate = b_ModifyDate;
		this.status = status;
	}
	@Override
	public String toString() {
		return "Report [rNo=" + rNo + ", rContent=" + rContent + ", rMan=" + rMan + ", rRe=" + rRe + ", rDate=" + rDate
				+ ", rType=" + rType + ", bNo=" + bNo + ", bTitle=" + bTitle + ", bWriter=" + bWriter + ", bContent="
				+ bContent + ", bCount=" + bCount + ", b_CreateDate=" + b_CreateDate + ", b_ModifyDate=" + b_ModifyDate
				+ ", status=" + status + "]";
	}
	
	
	
	
}
