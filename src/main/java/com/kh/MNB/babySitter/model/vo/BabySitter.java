package com.kh.MNB.babySitter.model.vo;

public class BabySitter {

	   private String bcCarrer; // 경력
	   private String bhType; // 희망 아이유형
	   private String bcSalary; //급여
	   private String bcTime; //시간
	   private String babyType; //아이유형
	   private String bcactivity; //가능 활동
	   private String Req; //요청사항
	   private int bNo; // 게시글 번호
	   
	   
	   public BabySitter() {
	      super();
	   }
	   
	   // 베비이시터지원(베이비시터용)
	   public BabySitter(String bcCarrer, String bhType, String bcSalary, String bcTime, int bNo) {
	      super();
	      this.bcCarrer = bcCarrer;
	      this.bhType = bhType;
	      this.bcSalary = bcSalary;
	      this.bcTime = bcTime;
	      this.bNo = bNo;
	   }
	   
	   //베이비시터 모집(부모용)
	   public BabySitter(String bcSalary, String bcTime, String babyType, String bcactivity, String req, int bNo) {
	      super();
	      this.bcSalary = bcSalary;
	      this.bcTime = bcTime;
	      this.babyType = babyType;
	      this.bcactivity = bcactivity;
	      this.Req = req;
	      this.bNo = bNo;
	   }

	   //전체생성자
	   public BabySitter(String bcCarrer, String bhType, String bcSalary, String bcTime, String babyType,
	         String bcactivity, String req, int bNo) {
	      super();
	      this.bcCarrer = bcCarrer;
	      this.bhType = bhType;
	      this.bcSalary = bcSalary;
	      this.bcTime = bcTime;
	      this.babyType = babyType;
	      this.bcactivity = bcactivity;
	      this.Req = req;
	      this.bNo = bNo;
	   }

	public String getBcCarrer() {
		return bcCarrer;
	}
	

	public void setBcCarrer(String bcCarrer) {
		this.bcCarrer = bcCarrer;
	}
	public String getBhType() {
		return bhType;
	}
	public void setBhType(String bhType) {
		this.bhType = bhType;
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
	public String getBabyType() {
		return babyType;
	}
	public void setBabyType(String babyType) {
		this.babyType = babyType;
	}
	public String getBcactivity() {
		return bcactivity;
	}
	public void setBcactivity(String bcactivity) {
		this.bcactivity = bcactivity;
	}
	public String getReq() {
		return Req;
	}
	public void setReq(String req) {
		Req = req;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	
	
}
