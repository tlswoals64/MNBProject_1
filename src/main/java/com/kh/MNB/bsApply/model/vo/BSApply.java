package com.kh.MNB.bsApply.model.vo;

import java.sql.Date;

public class BSApply {
   private String userId; // 회원 아이디
   private String caring; // 육아돌봄경험
   private String intro; // 간단자기소개
   private String job; // 직업
   private String bType; // 아이 유형 
   private String activity; // 활동
   private Date apply_Date; // 신청일
   public BSApply(String userId, String caring, String intro, String job, String bType, String activity,
         Date apply_Date) {
      super();
      this.userId = userId;
      this.caring = caring;
      this.intro = intro;
      this.job = job;
      this.bType = bType;
      this.activity = activity;
      this.apply_Date = apply_Date;
      
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
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
   @Override
   public String toString() {
      return "BSApply [userId=" + userId + ", caring=" + caring + ", intro=" + intro + ", job=" + job + ", bType="
            + bType + ", activity=" + activity + ", apply_Date=" + apply_Date + "]";
   }
   
}