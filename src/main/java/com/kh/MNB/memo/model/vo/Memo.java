package com.kh.MNB.memo.model.vo;

import java.sql.Date;

public class Memo {
   private int mNum; // 메모 번호
   private String userId; // 회원아이디

   private String content; // 내용
   private String status; // 상태
   private Date create_date; // 생성날짜
   
   public Memo() {}

	public Memo(int mNum, String userId, String content, String status, Date create_date) {
		super();
		this.mNum = mNum;
		this.userId = userId;
		this.content = content;
		this.status = status;
		this.create_date = create_date;
	}
	
	public int getmNum() {
		return mNum;
	}
	
	public void setmNum(int mNum) {
		this.mNum = mNum;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
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
	
	public Date getCreate_date() {
		return create_date;
	}
	
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	
	@Override
	public String toString() {
		return "Memo [mNum=" + mNum + ", userId=" + userId + ", content=" + content + ", status=" + status
				+ ", create_date=" + create_date + "]";
	}

   
   
   
   
   
}