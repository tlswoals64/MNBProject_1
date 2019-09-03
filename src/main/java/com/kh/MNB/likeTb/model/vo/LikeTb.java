package com.kh.MNB.likeTb.model.vo;

public class LikeTb {

   private int lNo; // 좋아요 번호
   private int lCount; // 좋아요 수
   private String userId; // 아이디
   private int bNo; // 게시글 번호
   
   //기본 생성자
   public LikeTb() {
      super();
   }

   
   
   //전체생성자
   public LikeTb(int lNo, int lCount, String userId, int bNo) {
      super();
      this.lNo = lNo;
      this.lCount = lCount;
      this.userId = userId;
      this.bNo = bNo;
   }


   //좋아요 수 뺀 생성자
   public LikeTb(int lNo, String userId, int bNo) {
      super();
      this.lNo = lNo;
      this.userId = userId;
      this.bNo = bNo;
   }



   public int getlNo() {
      return lNo;
   }



   public void setlNo(int lNo) {
      this.lNo = lNo;
   }



   public int getlCount() {
      return lCount;
   }



   public void setlCount(int lCount) {
      this.lCount = lCount;
   }



   public String getUserId() {
      return userId;
   }



   public void setUserId(String userId) {
      this.userId = userId;
   }



   public int getbNo() {
      return bNo;
   }



   public void setbNo(int bNo) {
      this.bNo = bNo;
   }



   @Override
   public String toString() {
      return "LikeTb [lNo=" + lNo + ", lCount=" + lCount + ", userId=" + userId + ", bNo=" + bNo + "]";
   }
   
   
   
}