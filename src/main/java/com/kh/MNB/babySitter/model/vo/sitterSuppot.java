package com.kh.MNB.babySitter.model.vo;

import java.sql.Date;

public class sitterSuppot {
	private int rNo;
	private int bNo;
	private int bType;
	private String bTitle;
	private String bContent;
	private int bCount;
	private String status;
	private Date b_CreateDate;
	private Date b_ModifyDate;
	private String bWriter;
	private String bCcarrer;
	private String bHtype;
	private String salary;
	private String time;
	private int iNo;
	private String originalName;
	private String changeName;
	private Date upload_Date;
	
	public sitterSuppot() {}
	
	public sitterSuppot(int rNo, int bNo, int bType, String bTitle, String bContent, int bCount, String status,
			Date b_CreateDate, Date b_ModifyDate, String bWriter, String bCcarrer, String bHtype, String salary,
			String time, int iNo, String originalName, String changeName, Date upload_Date) {
		super();
		this.rNo = rNo;
		this.bNo = bNo;
		this.bType = bType;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bCount = bCount;
		this.status = status;
		this.b_CreateDate = b_CreateDate;
		this.b_ModifyDate = b_ModifyDate;
		this.bWriter = bWriter;
		this.bCcarrer = bCcarrer;
		this.bHtype = bHtype;
		this.salary = salary;
		this.time = time;
		this.iNo = iNo;
		this.originalName = originalName;
		this.changeName = changeName;
		this.upload_Date = upload_Date;
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

	public String getbCcarrer() {
		return bCcarrer;
	}

	public void setbCcarrer(String bCcarrer) {
		this.bCcarrer = bCcarrer;
	}

	public String getbHtype() {
		return bHtype;
	}

	public void setbHtype(String bHtype) {
		this.bHtype = bHtype;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getiNo() {
		return iNo;
	}

	public void setiNo(int iNo) {
		this.iNo = iNo;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
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

	@Override
	public String toString() {
		return "sitterSuppot [rNo=" + rNo + ", bNo=" + bNo + ", bType=" + bType + ", bTitle=" + bTitle + ", bContent="
				+ bContent + ", bCount=" + bCount + ", status=" + status + ", b_CreateDate=" + b_CreateDate
				+ ", b_ModifyDate=" + b_ModifyDate + ", bWriter=" + bWriter + ", bCcarrer=" + bCcarrer + ", bHtype="
				+ bHtype + ", salary=" + salary + ", time=" + time + ", iNo=" + iNo + ", originalName=" + originalName
				+ ", changeName=" + changeName + ", upload_Date=" + upload_Date + "]";
	}
	
}
