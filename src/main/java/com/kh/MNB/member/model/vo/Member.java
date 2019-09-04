package com.kh.MNB.member.model.vo;

import java.sql.Date;

public class Member {
      private String userId; // 회원 아이디
      private String userPwd; // 회원 비밀번호
      private String userName; // 회원 이름
      private Date birth; // 회원 생일
      private String nickName; // 회원 닉네임
      private String gender; // 회원 성별
      private String email; // 회원 이메일
      private String phone; // 회원 연락처
      private String address; // 회원 주소
      private int memberType; // 회원 타입(1이면 일반회원 2면 베이비시터회원)
      private String status; // 회원 상태
      private Date enroll_Date; // 회원 수정날짜
      private Date modify_Date; // 회원 가입날짜
      
      public Member() {}
      
      // 전체 생성자
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
      // enroll_Date 수정날짜, modify_Date 가입날짜 뺀 생성자 
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

      @Override
      public String toString() {
         return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", birth=" + birth
               + ", nickName=" + nickName + ", gender=" + gender + ", email=" + email + ", phone=" + phone
               + ", address=" + address + ", memberType=" + memberType + ", status=" + status + ", enroll_Date="
               + enroll_Date + ", modify_Date=" + modify_Date + "]";
      }
      
}