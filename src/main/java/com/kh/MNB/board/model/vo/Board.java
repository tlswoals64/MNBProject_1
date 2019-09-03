package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Board {
	
	private int bNum; // 게시글 번호
	private int bType; 
	// 게시글 타입(1 커뮤니티 / 2 무료나눔 / 3 부모 / 4 시터 / 5 문의사항 / 6 공지사항 / 7 신고 / 8 후기)
	private String bTitle; // 게시글 제목
	private String bWriter; //게시글 작성자
	private String bContent; // 게시글 내용
	private int bCount; // 조회수
	private Date bc_ReateDate; //생성날짜
	private Date b_ModifyDate; // 수정날짜
	private String bStatus; //상태
	
	public Board() {}
	
	
	// 전체생성자
	public Board(int bNum, int bType, String bTitle, String bWriter, String bContent, int bCount, Date bc_ReateDate,
			Date b_ModifyDate, String bStatus) {
		super();
		this.bNum = bNum;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.bc_ReateDate = bc_ReateDate;
		this.b_ModifyDate = b_ModifyDate;
		this.bStatus = bStatus;
	}

	
	// 생성날짜, 수정날짜 뺀 생성자
	public Board(int bNum, int bType, String bTitle, String bWriter, String bContent, int bCount, String bStatus) {
		super();
		this.bNum = bNum;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.bStatus = bStatus;
	}

	// 생성날짜, 수정날짜, status 뺀 생성자
	public Board(int bNum, int bType, String bTitle, String bWriter, String bContent, int bCount) {
		super();
		this.bNum = bNum;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
	}


	public int getbNum() {
		return bNum;
	}


	public void setbNum(int bNum) {
		this.bNum = bNum;
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


	public Date getBc_ReateDate() {
		return bc_ReateDate;
	}


	public void setBc_ReateDate(Date bc_ReateDate) {
		this.bc_ReateDate = bc_ReateDate;
	}


	public Date getB_ModifyDate() {
		return b_ModifyDate;
	}


	public void setB_ModifyDate(Date b_ModifyDate) {
		this.b_ModifyDate = b_ModifyDate;
	}


	public String getbStatus() {
		return bStatus;
	}


	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}


	@Override
	public String toString() {
		return "Board [bNum=" + bNum + ", bType=" + bType + ", bTitle=" + bTitle + ", bWriter=" + bWriter
				+ ", bContent=" + bContent + ", bCount=" + bCount + ", bc_ReateDate=" + bc_ReateDate + ", b_ModifyDate="
				+ b_ModifyDate + ", bStatus=" + bStatus + "]";
	}
	
	
	
	
	


	
	
	

}
