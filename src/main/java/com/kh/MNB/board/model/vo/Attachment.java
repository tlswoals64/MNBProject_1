package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Attachment {
	private int iNo; // 이미지 번호
	private int bNo; // 게시글 번호
	private String originName; // 이미지 명
	private String changeName; // 변경 이미지 명
	private String filePath; // 이미지 경로
	private Date upload_Date; // 업로드 날짜
	private String iType; // 이미지 타입
	private String status; // 상태
	
	public Attachment() {}

	// 전체 생성자
	public Attachment(int iNo, int bNo, String originName, String changeName, String filePath, Date upload_Date,
			String iType, String status) {
		super();
		this.iNo = iNo;
		this.bNo = bNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.upload_Date = upload_Date;
		this.iType = iType;
		this.status = status;
	}
	
	// status랑 iType뺀 생성자
	public Attachment(int iNo, int bNo, String originName, String changeName, String filePath, String iType) {
		super();
		this.iNo = iNo;
		this.bNo = bNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.iType = iType;
	}

	public int getiNo() {
		return iNo;
	}

	public void setiNo(int iNo) {
		this.iNo = iNo;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUpload_Date() {
		return upload_Date;
	}

	public void setUpload_Date(Date upload_Date) {
		this.upload_Date = upload_Date;
	}

	public String getiType() {
		return iType;
	}

	public void setiType(String iType) {
		this.iType = iType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Attachment [iNo=" + iNo + ", bNo=" + bNo + ", originName=" + originName + ", changeName=" + changeName
				+ ", filePath=" + filePath + ", upload_Date=" + upload_Date + ", iType=" + iType + ", status=" + status
				+ "]";
	}

	
	
}
