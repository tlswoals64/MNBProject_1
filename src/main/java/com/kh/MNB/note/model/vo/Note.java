package com.kh.MNB.note.model.vo;

import java.sql.Date;

public class Note {
   private int nNo; // 쪽지 번호
   private String nTitle; // 쪽지 제목
   private String nContent; // 쪽지 내용
   private String send; // 쪽지 발신인
   private String respon; //  쪽지  수신인
   private String read; // 쪽지 읽음 여부
   private String status; // 쪽지 상태
   private Date enroll_Date; // 쪽지 작성일

   public Note() {}
   
   // 전체 생성자
   public Note(int nNo, String nTitle, String nContent, String send, String respon, String read, String status,
         Date enroll_Date) {
      super();
      this.nNo = nNo;
      this.nTitle = nTitle;
      this.nContent = nContent;
      this.send = send;
      this.respon = respon;
      this.read = read;
      this.status = status;
      this.enroll_Date = enroll_Date;
   }

   public int getnNo() {
      return nNo;
   }

   public void setnNo(int nNo) {
      this.nNo = nNo;
   }

   public String getnTitle() {
      return nTitle;
   }

   public void setnTitle(String nTitle) {
      this.nTitle = nTitle;
   }

   public String getnContent() {
      return nContent;
   }

   public void setnContent(String nContent) {
      this.nContent = nContent;
   }

   public String getSend() {
      return send;
   }

   public void setSend(String send) {
      this.send = send;
   }

   public String getRespon() {
      return respon;
   }

   public void setRespon(String respon) {
      this.respon = respon;
   }

   public String getRead() {
      return read;
   }

   public void setRead(String read) {
      this.read = read;
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

   @Override
   public String toString() {
      return "Note [nNo=" + nNo + ", nTitle=" + nTitle + ", nContent=" + nContent + ", send=" + send + ", respon="
            + respon + ", read=" + read + ", status=" + status + ", enroll_Date=" + enroll_Date + "]";
   }
   
   
   
}
   
   