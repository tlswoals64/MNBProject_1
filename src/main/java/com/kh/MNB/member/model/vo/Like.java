package com.kh.MNB.member.model.vo;

import java.sql.Date;

public class Like {
	
	private int rNo;
	private int bNo;
	private int bType;
	private String bTitle;
	private String bContent;
	private int bConunt;
	private String status;
	private Date b_CreateDate;
	private Date b_ModifyDate;
	private String bWriter;
	private int lCount;
	
	public Like() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Like(int rNo, int bNo, int bType, String bTitle, String bContent, int bConunt, String status,
			Date b_CreateDate, Date b_ModifyDate, String bWriter, int lCount) {
		super();
		this.rNo = rNo;
		this.bNo = bNo;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bConunt = bConunt;
		this.status = status;
		this.b_CreateDate = b_CreateDate;
		this.b_ModifyDate = b_ModifyDate;
		this.bWriter = bWriter;
		this.lCount = lCount;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getbType() {
		return bType;
	}

	public void setbType(int bType) {
		this.bType = bType;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbConunt() {
		return bConunt;
	}

	public void setbConunt(int bConunt) {
		this.bConunt = bConunt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}

	public int getlCount() {
		return lCount;
	}

	public void setlCount(int lCount) {
		this.lCount = lCount;
	}

	@Override
	public String toString() {
		return "LikeTb [rNo=" + rNo + ", bNo=" + bNo + ", bType=" + bType + ", bTitle=" + bTitle + ", bContent="
				+ bContent + ", bConunt=" + bConunt + ", status=" + status + ", b_CreateDate=" + b_CreateDate
				+ ", b_ModifyDate=" + b_ModifyDate + ", bWriter=" + bWriter + ", lCount=" + lCount + "]";
	}
	
	
	

}
