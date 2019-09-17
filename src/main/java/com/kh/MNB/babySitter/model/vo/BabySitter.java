package com.kh.MNB.babySitter.model.vo;

public class BabySitter {

	   private String bcCarrer; // 경력
	   private String bcSalary; //급여
	   private String bcTime; //시간
	   private String bcactivity; //가능 활동
	   private String req; //요청사항
	   private int bNo; // 게시글 번호
	   private String address;//주소
	   private int personnel;//인원
	   private String bage;//나이
	   private String bgender;//성별
	   
	   
	   public BabySitter() { }
	   
	  
	   //베이비시터 용
	public BabySitter(String bcCarrer, String bcSalary, String bcTime, String bcactivity, int bNo, String address) {
		super();
		this.bcCarrer = bcCarrer;
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.bcactivity = bcactivity;
		this.bNo = bNo;
		this.address = address;
	}
	//부모님용
	public BabySitter(String bcSalary, String bcTime, String bcactivity, String req, int bNo, String address,
			int personnel, String bage, String bgender) {
		super();
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.bcactivity = bcactivity;
		this.req = req;
		this.bNo = bNo;
		this.address = address;
		this.personnel = personnel;
		this.bage = bage;
		this.bgender = bgender;
	}
	//전체생성자
	public BabySitter(String bcCarrer, String bcSalary, String bcTime, String bcactivity, String req, int bNo,
			String address, int personnel, String bage, String bgender) {
		super();
		this.bcCarrer = bcCarrer;
		this.bcSalary = bcSalary;
		this.bcTime = bcTime;
		this.bcactivity = bcactivity;
		this.req = req;
		this.bNo = bNo;
		this.address = address;
		this.personnel = personnel;
		this.bage = bage;
		this.bgender = bgender;
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

	public String getBage() {
		return bage;
	}

	public void setBage(String bage) {
		this.bage = bage;
	}

	public String getBgender() {
		return bgender;
	}
	public void setBgender(String bgender) {
		this.bgender = bgender;
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
	public String getBcactivity() {
		return bcactivity;
	}
	public void setBcactivity(String bcactivity) {
		this.bcactivity = bcactivity;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	
	
}
