package com.kh.MNB.babySitter.model.vo;

public class BabySitter {

	   private String bcCarrer; // 경력
	   private String bcSalary; //급여
	   private String bcTime; //시간
	   private String bcActivity; //가능 활동
	   private String req; //요청사항
	   private int bNo; // 게시글 번호
	   private String address;//주소
	   private int personnel;//인원
	   private String bAge;//나이
	   private String bGender;//성별
	   
	   
	   public BabySitter() { }
	   
	  
	   //베이비시터 용
	public BabySitter(String bcCarrer, String bcSalary, String bcTime, String bcActivity, int bNo, String address) {
		super();
		this.bcCarrer = bcCarrer;
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.bcActivity = bcActivity;
		this.bNo = bNo;
		this.address = address;
	}
	//부모님용
	public BabySitter(String bcSalary, String bcTime, String bcActivity, String req, int bNo, String address,
			int personnel, String bAge, String bGender) {
		super();
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.bcActivity = bcActivity;
		this.req = req;
		this.bNo = bNo;
		this.address = address;
		this.personnel = personnel;
		this.bAge = bAge;
		this.bGender = bGender;
	}
	//전체생성자
	public BabySitter(String bcCarrer, String bcSalary, String bcTime, String bcActivity, String req, int bNo,
			String address, int personnel, String bAge, String bGender) {
		super();
		this.bcCarrer = bcCarrer;
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.bcActivity = bcActivity;
		this.req = req;
		this.bNo = bNo;
		this.address = address;
		this.personnel = personnel;
		this.bAge = bAge;
		this.bGender = bGender;
	}
	
	public String getReq() {
		return req;
	}

	public void setReq(String req) {
		this.req = req;
	}


	public String getBcCarrer() {
		return bcCarrer;
	}
	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getbGender() {
		return bGender;
	}
	public void setbGender(String bGender) {
		this.bGender = bGender;
	}

	public void setBcCarrer(String bcCarrer) {
		this.bcCarrer = bcCarrer;
	}

	public String getBcSalary() {
		return bcSalary;
	}
	public void setBcSalary(String bcSalary) {
		this.bcSalary = bcSalary;
	}
	public String getBcTime() {
		return bcTime;
	}
	public void setBcTime(String bcTime) {
		this.bcTime = bcTime;
	}
	
	public String getBcActivity() {
		return bcActivity;
	}
	public void setBcActivity(String bcActivity) {
		this.bcActivity = bcActivity;
	}
	public String getbAge() {
		return bAge;
	}

	public void setbAge(String bAge) {
		this.bAge = bAge;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}


	@Override
	public String toString() {
		return "BabySitter [bcCarrer=" + bcCarrer + ", bcSalary=" + bcSalary + ", bcTime=" + bcTime + ", bcActivity="
				+ bcActivity + ", req=" + req + ", bNo=" + bNo + ", address=" + address + ", personnel=" + personnel
				+ ", bAge=" + bAge + ", bGender=" + bGender + "]";
	}
	
	
}
