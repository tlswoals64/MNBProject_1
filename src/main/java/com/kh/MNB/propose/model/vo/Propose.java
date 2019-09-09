package com.kh.MNB.propose.model.vo;

import java.sql.Date;

public class Propose {

   private int pNo; //게시글번호
   private int pType; // 게시글분류
   private String pRe; // 답변여부
   private String pReContent; // 답변내용
   private String bTitle; // 게시글 제목
   private String bWriter; //게시글 작성자
   private String bContent; // 게시글 내용
   private int bCount; // 조회수
   private Date b_CreateDate; //생성날짜
   private Date b_ModifyDate; // 수정날짜
   private String status; //상태
   
   public Propose() {
      super();
   }
   
   
   public Propose(int pNo, int pType, String pRe, String pReContent, String bTitle, String bWriter, String bContent,
         int bCount, Date b_CreateDate, Date b_ModifyDate, String status) {
      super();
      this.pNo = pNo;
      this.pType = pType;
      this.pRe = pRe;
      this.pReContent = pReContent;
      this.bTitle = bTitle;
      this.bWriter = bWriter;
      this.bContent = bContent;
      this.bCount = bCount;
      this.b_CreateDate = b_CreateDate;
      this.b_ModifyDate = b_ModifyDate;
      this.status = status;
   }


   public Propose(int pNo, int pType, String pRe, String bTitle, String bWriter, String bContent, int bCount,
         Date b_CreateDate, Date b_ModifyDate, String status) {
      super();
      this.pNo = pNo;
      this.pType = pType;
      this.pRe = pRe;
      this.bTitle = bTitle;
      this.bWriter = bWriter;
      this.bContent = bContent;
      this.bCount = bCount;
      this.b_CreateDate = b_CreateDate;
      this.b_ModifyDate = b_ModifyDate;
      this.status = status;
   }


   public Propose(int pNo, int pType, String pRe) {
      super();
      this.pNo = pNo;
      this.pType = pType;
      this.pRe = pRe;
   }

   public int getpNo() {
      return pNo;
   }

   public void setpNo(int pNo) {
      this.pNo = pNo;
   }

   public int getpType() {
      return pType;
   }

   public void setpType(int pType) {
      this.pType = pType;
   }

   public String getpRe() {
      return pRe;
   }

   public void setpRe(String pRe) {
      this.pRe = pRe;
   }
   

   public String getbTitle() {
      return bTitle;
   }


   public void setbTitle(String bTitle) {
      this.bTitle = bTitle;
   }


   public String getbWriter() {
      return bWriter;
   }


   public void setbWriter(String bWriter) {
      this.bWriter = bWriter;
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

   


   public Date getB_ModifyDate() {
      return b_ModifyDate;
   }


   public void setB_ModifyDate(Date b_ModifyDate) {
      this.b_ModifyDate = b_ModifyDate;
   }


   public Date getB_CreateDate() {
      return b_CreateDate;
   }


   public void setB_CreateDate(Date b_CreateDate) {
      this.b_CreateDate = b_CreateDate;
   }


   public String getStatus() {
      return status;
   }


   public void setStatus(String status) {
      this.status = status;
   }
   


   public String getpReContent() {
      return pReContent;
   }


   public void setpReContent(String pReContent) {
      this.pReContent = pReContent;
   }


   @Override
   public String toString() {
      return "Propose [pNo=" + pNo + ", pType=" + pType + ", pRe=" + pRe + ", pReContent=" + pReContent + ", bTitle="
            + bTitle + ", bWriter=" + bWriter + ", bContent=" + bContent + ", bCount=" + bCount + ", b_CreateDate="
            + b_CreateDate + ", b_ModifyDate=" + b_ModifyDate + ", status=" + status + "]";
   }

   
   
   
}