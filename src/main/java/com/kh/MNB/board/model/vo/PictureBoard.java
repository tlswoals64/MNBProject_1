package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class PictureBoard {
	private int bNo;
	private int bType;
	private String bTitle;
	private String bContent;
	private Date b_CreateDate;
	private int bCount;
	private String status;
	private Date b_ModifyDate;
	private String bWriter;
	private int iNo;
	private String originName;
	private String changeName;
	private int iType;
	private Date upload_Date;
	private String nickName;
	
	public PictureBoard() {}

	public PictureBoard(int bNo, int bType, String bTitle, String bContent, Date b_CreateDate, int bCount,
			String status, Date b_ModifyDate, String bWriter, int iNo, String originName, String changeName, int iType,
			Date upload_Date, String nickName) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.b_CreateDate = b_CreateDate;
		this.bCount = bCount;
		this.status = status;
		this.b_ModifyDate = b_ModifyDate;
		this.bWriter = bWriter;
		this.iNo = iNo;
		this.originName = originName;
		this.changeName = changeName;
		this.iType = iType;
		this.upload_Date = upload_Date;
		this.nickName = nickName;
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

	public Date getB_CreateDate() {
		return b_CreateDate;
	}

	public void setB_CreateDate(Date b_CreateDate) {
		this.b_CreateDate = b_CreateDate;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public int getiNo() {
		return iNo;
	}

	public void setiNo(int iNo) {
		this.iNo = iNo;
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

	public int getiType() {
		return iType;
	}

	public void setiType(int iType) {
		this.iType = iType;
	}

	public Date getUpload_Date() {
		return upload_Date;
	}

	public void setUpload_Date(Date upload_Date) {
		this.upload_Date = upload_Date;
	}
	
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	public String getNickName() {
		return nickName;
	}

	@Override
	public String toString() {
		return "PictureBoard [bNo=" + bNo + ", bType=" + bType + ", bTitle=" + bTitle + ", bContent=" + bContent
				+ ", b_CreateDate=" + b_CreateDate + ", bCount=" + bCount + ", status=" + status + ", b_ModifyDate="
				+ b_ModifyDate + ", bWriter=" + bWriter + ", iNo=" + iNo + ", originName=" + originName
				+ ", changeName=" + changeName + ", iType=" + iType + ", upload_Date=" + upload_Date + "]" + nickName + "]";
	}
	
	

}
