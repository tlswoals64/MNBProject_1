package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Attachment {
	private int iNo; // �씠誘몄� 踰덊샇
	private int bNo; // 寃뚯떆湲� 踰덊샇
	private String originName; // �씠誘몄� 紐�
	private String changeName; // 蹂�寃� �씠誘몄� 紐�
	private Date upload_Date; // �뾽濡쒕뱶 �궇吏�
	private int iType; // �씠誘몄� ���엯
	private String status; // �긽�깭
	
	public Attachment() {}

	// �쟾泥� �깮�꽦�옄
	public Attachment(int iNo, int bNo, String originName, String changeName, Date upload_Date,
			int iType, String status) {
		super();
		this.iNo = iNo;
		this.bNo = bNo;
		this.originName = originName;
		this.changeName = changeName;
		this.upload_Date = upload_Date;
		this.iType = iType;
		this.status = status;
	}
	
	// status�옉 iType類� �깮�꽦�옄
	public Attachment(int iNo, int bNo, String originName, String changeName, int iType) {
		super();
		this.iNo = iNo;
		this.bNo = bNo;
		this.originName = originName;
		this.changeName = changeName;
		this.iType = iType;
	}


	public Attachment(int bNo, String originName, String changeName, Date upload_Date) {
		super();
		this.bNo = bNo;
		this.originName = originName;
		this.changeName = changeName;
		this.upload_Date = upload_Date;
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

	public Date getUpload_Date() {
		return upload_Date;
	}

	public void setUpload_Date(Date upload_Date) {
		this.upload_Date = upload_Date;
	}

	public int getiType() {
		return iType;
	}

	public void setiType(int iType) {
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
				+  ", upload_Date=" + upload_Date + ", iType=" + iType + ", status=" + status
				+ "]";
	}

	
	
}
