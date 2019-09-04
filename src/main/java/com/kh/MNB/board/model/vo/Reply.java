package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Reply {
	
	private int rNum; // 댓글 번호
	private String nContent; // 내용
	private int bNo; // 게시글 번호
	private String rWriter; // 작성자
	private Date nCreate_Date;
	private String status;
	

	public Reply() {}


	public Reply(int rNum, String nContent, int bNo, String rWriter, Date nCreate_Date, String status) {
		super();
		this.rNum = rNum;
		this.nContent = nContent;
		this.bNo = bNo;
		this.rWriter = rWriter;
		this.nCreate_Date = nCreate_Date;
		this.status = status;
	}


	public int getrNum() {
		return rNum;
	}


	public void setrNum(int rNum) {
		this.rNum = rNum;
	}


	public String getnContent() {
		return nContent;
	}


	public void setnContent(String nContent) {
		this.nContent = nContent;
	}


	public int getbNo() {
		return bNo;
	}


	public void setbNo(int bNo) {
		this.bNo = bNo;
	}


	public String getrWriter() {
		return rWriter;
	}


	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}


	public Date getnCreate_Date() {
		return nCreate_Date;
	}


	public void setnCreate_Date(Date nCreate_Date) {
		this.nCreate_Date = nCreate_Date;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Reply(int rNum, String nContent, int bNo, String rWriter, String status) {
		super();
		this.rNum = rNum;
		this.nContent = nContent;
		this.bNo = bNo;
		this.rWriter = rWriter;
		this.status = status;
	}


	@Override
	public String toString() {
		return "Reply [rNum=" + rNum + ", nContent=" + nContent + ", bNo=" + bNo + ", rWriter=" + rWriter
				+ ", nCreate_Date=" + nCreate_Date + ", status=" + status + "]";
	}

	
	
	
	
}
