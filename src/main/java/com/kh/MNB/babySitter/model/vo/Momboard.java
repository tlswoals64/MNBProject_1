package com.kh.MNB.babySitter.model.vo;

import java.sql.Date;

public class Momboard {
	
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
	private String bcSalary;
	private String bcTime;
	private String address;
	private String bcActivity;
	private String req;
	private int personnel;
	private String bAge;
	private String bGender;
	private int iNo;
	private String originalName;
	private String changeName;
	private Date upload_Date;
	
	public Momboard() {}
	
	public Momboard(int rNo, int bNo, int bType, String bTitle, String bContent, int bCount, String status,
			Date b_CreateDate, Date b_ModifyDate, String bWriter, String bcSalary, String bcTime, String address,
			String bcActivity, String req, int personnel, String bAge, String bGender, int iNo, String originalName,
			String changeName, Date upload_Date) {
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
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.address = address;
		this.bcActivity = bcActivity;
		this.req = req;
		this.personnel = personnel;
		this.bAge = bAge;
		this.bGender = bGender;
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


	public String getSalary() {
		return bcSalary;
	}


	public void setSalary(String bcSalary) {
		this.bcSalary = bcSalary;
	}


	public String getTime() {
		return bcTime;
	}


	public void setTime(String bcTime) {
		this.bcTime = bcTime;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getBcActivity() {
		return bcActivity;
	}


	public void setBcActivity(String bcActivity) {
		this.bcActivity = bcActivity;
	}


	public String getReq() {
		return req;
	}


	public void setReq(String req) {
		this.req = req;
	}


	public int getPersonnel() {
		return personnel;
	}


	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}


	public String getbAge() {
		return bAge;
	}


	public void setbAge(String bAge) {
		this.bAge = bAge;
	}


	public String getbGender() {
		return bGender;
	}


	public void setbGender(String bGender) {
		this.bGender = bGender;
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
		return "MomSuppot [rNo=" + rNo + ", bNo=" + bNo + ", bType=" + bType + ", bTitle=" + bTitle + ", bContent="
				+ bContent + ", bCount=" + bCount + ", status=" + status + ", b_CreateDate=" + b_CreateDate
				+ ", b_ModifyDate=" + b_ModifyDate + ", bWriter=" + bWriter + ", bcSalary=" + bcSalary + ", time=" + bcTime
				+ ", address=" + address + ", bcActivity=" + bcActivity + ", req=" + req + ", personnel=" + personnel
				+ ", bAge=" + bAge + ", bGender=" + bGender + ", iNo=" + iNo + ", originalName=" + originalName
				+ ", changeName=" + changeName + ", upload_Date=" + upload_Date + "]";
	}
	
	
	

}

