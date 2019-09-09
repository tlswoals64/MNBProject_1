package com.kh.MNB.board.model.vo;

import java.sql.Date;

public class Board {
   
   private int bNo; // �Խñ� ��ȣ
   private int bType; 
   // �Խñ� Ÿ��(1 Ŀ�´�Ƽ / 2 ���ᳪ�� / 3 �θ� / 4 ���� / 5 ���ǻ��� / 6 �������� / 7 �Ű� / 8 �ı�)
   private String bTitle; // �Խñ� ����
   private String bWriter; //�Խñ� �ۼ���
   private String bContent; // �Խñ� ����
   private int bCount; // ��ȸ��
   private Date b_CreateDate; //������¥
   private Date b_ModifyDate; // ������¥
   private String status; //����
   
   public Board() {}
   
   
   // ��ü������
   public Board(int bNo, int bType, String bTitle, String bWriter, String bContent, int bCount, Date b_CreateDate,
         Date b_ModifyDate, String status) {
      super();
      this.bNo = bNo;
      this.bType = bType;
      this.bTitle = bTitle;
      this.bWriter = bWriter;
      this.bContent = bContent;
      this.bCount = bCount;
      this.b_CreateDate = b_CreateDate;
      this.b_ModifyDate = b_ModifyDate;
      this.status = status;
   }

   
   // ������¥, ������¥ �� ������
   public Board(int bNo, int bType, String bTitle, String bWriter, String bContent, int bCount, String status) {
      super();
      this.bNo = bNo;
      this.bType = bType;
      this.bTitle = bTitle;
      this.bWriter = bWriter;
      this.bContent = bContent;
      this.bCount = bCount;
      this.status = status;
   }

   // ������¥, ������¥, status �� ������
   public Board(int bNo, int bType, String bTitle, String bWriter, String bContent, int bCount) {
      super();
      this.bNo = bNo;
      this.bType = bType;
      this.bTitle = bTitle;
      this.bWriter = bWriter;
      this.bContent = bContent;
      this.bCount = bCount;
   }


   public int getbNo() {
      return bNo;
   }


   public void setbNo(int bNo) {
      this.bNo = bNo;
   }


   public int getbType() {
      return bType;
   }


   public void setbType(int bType) {
      this.bType = bType;
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


   public Date getb_CreateDate() {
      return b_CreateDate;
   }


   public void setb_CreateDate(Date b_CreateDate) {
      this.b_CreateDate = b_CreateDate;
   }


   public Date getB_ModifyDate() {
      return b_ModifyDate;
   }


   public void setB_ModifyDate(Date b_ModifyDate) {
      this.b_ModifyDate = b_ModifyDate;
   }


   public String getstatus() {
      return status;
   }


   public void setstatus(String status) {
      this.status = status;
   }


   @Override
   public String toString() {
      return "Board [bNo=" + bNo + ", bType=" + bType + ", bTitle=" + bTitle + ", bWriter=" + bWriter
            + ", bContent=" + bContent + ", bCount=" + bCount + ", b_CreateDate=" + b_CreateDate + ", b_ModifyDate="
            + b_ModifyDate + ", status=" + status + "]";
   }
   
   
   
   
   


   
   
   

}