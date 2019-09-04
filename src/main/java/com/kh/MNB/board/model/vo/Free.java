package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Free extends Board {
	
	private int bNo; // 게시글 번호
	private String pName; // 상품명
	private Date pDate; // 구입날짜
	
	public Free() {}
	
	
	// 전체 생성자
	public Free(int bNo, String pName, Date pDate) {
		super();
		this.bNo = bNo;
		this.pName = pName;
		this.pDate = pDate;
	}


	public int getbNo() {
		return bNo;
	}


	public void setbNo(int bNo) {
		this.bNo = bNo;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public Date getpDate() {
		return pDate;
	}


	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}


	@Override
	public String toString() {
		return "Free [bNo=" + bNo + ", pName=" + pName + ", pDate=" + pDate + "]";
	}
	
	
}
