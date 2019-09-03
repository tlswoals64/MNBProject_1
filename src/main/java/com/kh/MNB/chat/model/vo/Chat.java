package com.kh.MNB.chat.model.vo;

public class Chat {
   private int cNo; // 채팅번호
   private String sId; // 발신아이디
   private String rId; // 수신아이디
   private String content; // 내용
   private String status; // 상태
   
   public Chat() {}

   public Chat(int cNo, String sId, String rId, String content, String status) {
      super();
      this.cNo = cNo;
      this.sId = sId;
      this.rId = rId;
      this.content = content;
      this.status = status;
   }

   public int getcNo() {
      return cNo;
   }

   public void setcNo(int cNo) {
      this.cNo = cNo;
   }

   public String getsId() {
      return sId;
   }

   public void setsId(String sId) {
      this.sId = sId;
   }

   public String getrId() {
      return rId;
   }

   public void setrId(String rId) {
      this.rId = rId;
   }

   public String getContent() {
      return content;
   }

   public void setContent(String content) {
      this.content = content;
   }

   public String getStatus() {
      return status;
   }

   public void setStatus(String status) {
      this.status = status;
   }

   @Override
   public String toString() {
      return "Chat [cNo=" + cNo + ", sId=" + sId + ", rId=" + rId + ", content=" + content + ", status=" + status
            + "]";
   }
   
   
}