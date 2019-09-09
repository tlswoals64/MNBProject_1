package com.kh.MNB.member.model.vo;

import java.sql.Date;

public class Member {
      private String userId; // ȸ�� ���̵�
      private String userPwd; // ȸ�� ��й�ȣ
      private String userName; // ȸ�� �̸�
      private Date birth; // ȸ�� ����
      private String nickName; // ȸ�� �г���
      private String gender; // ȸ�� ����
      private String email; // ȸ�� �̸���
      private String phone; // ȸ�� ����ó
      private String address; // ȸ�� �ּ�
      private int memberType; // ȸ�� Ÿ��(1�̸� �Ϲ�ȸ�� 2�� ���̺����ȸ��)
      private String status; // ȸ�� ����
      private Date enroll_Date; // ȸ�� ������¥
      private Date modify_Date; // ȸ�� ���Գ�¥
      private int dec;
      private Date dec_date;
      
      public Member() {}
      
      
      public Member(String userId, String userPwd, String userName, Date birth, String nickName, String gender,
			String email, String phone, String address, int memberType, String status, Date enroll_Date,
			Date modify_Date, int dec, Date dec_date) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birth = birth;
		this.nickName = nickName;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.memberType = memberType;
		this.status = status;
		this.enroll_Date = enroll_Date;
		this.modify_Date = modify_Date;
		this.dec = dec;
		this.dec_date = dec_date;
	}


	public Member(String userId, String userPwd, String userName, Date birth, String nickName, String gender,
            String email, String phone, String address, int memberType, String status, Date enroll_Date,
            Date modify_Date) {
         super();
         this.userId = userId;
         this.userPwd = userPwd;
         this.userName = userName;
         this.birth = birth;
         this.nickName = nickName;
         this.gender = gender;
         this.email = email;
         this.phone = phone;
         this.address = address;
         this.memberType = memberType;
         this.status = status;
         this.enroll_Date = enroll_Date;
         this.modify_Date = modify_Date;
      }
      // enroll_Date ������¥, modify_Date ���Գ�¥ �� ������ 
      public Member(String userId, String userPwd, String userName, Date birth, String nickName, String gender,
            String email, String phone, String address, int memberType, String status) {
         super();
         this.userId = userId;
         this.userPwd = userPwd;
         this.userName = userName;
         this.birth = birth;
         this.nickName = nickName;
         this.gender = gender;
         this.email = email;
         this.phone = phone;
         this.address = address;
         this.memberType = memberType;
         this.status = status;
      }
      
      
      public Member(String userId, int memberType) {
		super();
		this.userId = userId;
		this.memberType = memberType;
	}

	public String getUserId() {
         return userId;
      }

      public void setUserId(String userId) {
         this.userId = userId;
      }

      public String getUserPwd() {
         return userPwd;
      }

      public void setUserPwd(String userPwd) {
         this.userPwd = userPwd;
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

      public String getNickName() {
         return nickName;
      }

      public void setNickName(String nickName) {
         this.nickName = nickName;
      }

      public String getGender() {
         return gender;
      }

      public void setGender(String gender) {
         this.gender = gender;
      }

      public String getEmail() {
         return email;
      }

      public void setEmail(String email) {
         this.email = email;
      }

      public String getPhone() {
         return phone;
      }

      public void setPhone(String phone) {
         this.phone = phone;
      }

      public String getAddress() {
         return address;
      }

      public void setAddress(String address) {
         this.address = address;
      }

      public int getMemberType() {
         return memberType;
      }

      public void setMemberType(int memberType) {
         this.memberType = memberType;
      }

      public String getStatus() {
         return status;
      }

      public void setStatus(String status) {
         this.status = status;
      }

      public Date getEnroll_Date() {
         return enroll_Date;
      }

      public void setEnroll_Date(Date enroll_Date) {
         this.enroll_Date = enroll_Date;
      }

      public Date getModify_Date() {
         return modify_Date;
      }

      public void setModify_Date(Date modify_Date) {
         this.modify_Date = modify_Date;
      }
      
      
      public int getDec() {
		return dec;
	}


	public void setDec(int dec) {
		this.dec = dec;
	}


	public Date getDec_date() {
		return dec_date;
	}


	public void setDec_date(Date dec_date) {
		this.dec_date = dec_date;
	}


	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", birth=" + birth
				+ ", nickName=" + nickName + ", gender=" + gender + ", email=" + email + ", phone=" + phone
				+ ", address=" + address + ", memberType=" + memberType + ", status=" + status + ", enroll_Date="
				+ enroll_Date + ", modify_Date=" + modify_Date + ", dec=" + dec + ", dec_date=" + dec_date + "]";
	}


	
      
}