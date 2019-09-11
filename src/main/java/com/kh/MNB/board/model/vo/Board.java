package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Board {
	private int bNo; // 寃뚯떆湲� 踰덊샇
	private int bType;
	// 게시글 타입(1 커뮤니티 / 2 무료나눔 / 3 부모 / 4 시터 / 5 문의사항 / 6 공지사항 / 7 신고 / 8 후기)
	private String bTitle; // 寃뚯떆湲� �젣紐�
	private String bWriter; // 寃뚯떆湲� �옉�꽦�옄
	private String bContent; // 寃뚯떆湲� �궡�슜
	private int bCount; // 議고쉶�닔
	private Date b_CreateDate; // �깮�꽦�궇吏�
	private Date b_ModifyDate; // �닔�젙�궇吏�
	private String status; // �긽�깭

	public Board() {
	}

	// �쟾泥댁깮�꽦�옄
	public Board(int bNo, int bType, String bTitle, String bWriter, String bContent, int bCount, Date b_CreateDate,
			Date b_ModifyDate, String status) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.b_CreateDate = b_CreateDate;
		this.b_ModifyDate = b_ModifyDate;
		this.status = status;
	}

	// �깮�꽦�궇吏�, �닔�젙�궇吏� 類� �깮�꽦�옄
	public Board(int bNo, int bType, String bTitle, String bWriter, String bContent, int bCount, String status) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.status = status;
	}

	// �깮�꽦�궇吏�, �닔�젙�궇吏�, status 類� �깮�꽦�옄
	public Board(int bNo, int bType, String bTitle, String bWriter, String bContent, int bCount) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bType=" + bType + ", bTitle=" + bTitle + ", bWriter=" + bWriter + ", bContent="
				+ bContent + ", bCount=" + bCount + ", b_CreateDate=" + b_CreateDate + ", b_ModifyDate=" + b_ModifyDate
				+ ", status=" + status + "]";
	}


}