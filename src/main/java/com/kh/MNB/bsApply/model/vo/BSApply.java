package com.kh.MNB.bsApply.model.vo;

import java.sql.Date;

public class BSApply {
   private String userId; // ȸ�� ���̵�
   private String userName; //ȸ�� �̸�
   private Date birth; // ȸ�� ����
   private String address; // ȸ���ּ�
   private String caring; // ���Ƶ�������
   private String intro; // �����ڱ�Ұ�
   private String job; // ����
   private String bType; // ���� ���� 
   private String activity; // Ȱ��
   private Date apply_Date; // ������
   private Date create_Date; // ��û��
   
   
   public BSApply() {

   }


	public BSApply(String userId, String userName, Date birth, String address, String caring, String intro, String job,
		String bType, String activity, Date apply_Date, Date create_Date) {
	super();
	this.userId = userId;
	this.userName = userName;
	this.birth = birth;
	this.address = address;
	this.caring = caring;
	this.intro = intro;
	this.job = job;
	this.bType = bType;
	this.activity = activity;
	this.apply_Date = apply_Date;
	this.create_Date = create_Date;
}


	public BSApply(String userId, String caring, String intro, String job, String bType, String activity) {
		super();
		this.userId = userId;
		this.caring = caring;
		this.intro = intro;
		this.job = job;
		this.bType = bType;
		this.activity = activity;
	}
	

	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Date getBirth() {
		return birth;
	}


	public void setBirth(Date birth) {
		this.birth = birth;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCaring() {
		return caring;
	}


	public void setCaring(String caring) {
		this.caring = caring;
	}


	public String getIntro() {
		return intro;
	}


	public void setIntro(String intro) {
		this.intro = intro;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getbType() {
		return bType;
	}


	public void setbType(String bType) {
		this.bType = bType;
	}


	public String getActivity() {
		return activity;
	}


	public void setActivity(String activity) {
		this.activity = activity;
	}


	public Date getApply_Date() {
		return apply_Date;
	}


	public void setApply_Date(Date apply_Date) {
		this.apply_Date = apply_Date;
	}
	
	


	public Date getCreate_Date() {
		return create_Date;
	}



	public void setCreate_Date(Date create_Date) {
		this.create_Date = create_Date;
	}





	@Override
	public String toString() {
		return "BSApply [userId=" + userId + ", userName=" + userName + ", birth=" + birth + ", address=" + address
				+ ", caring=" + caring + ", intro=" + intro + ", job=" + job + ", bType=" + bType + ", activity="
				+ activity + ", apply_Date=" + apply_Date + ", create_Date=" + create_Date + "]";
	}

	

	   
   
}