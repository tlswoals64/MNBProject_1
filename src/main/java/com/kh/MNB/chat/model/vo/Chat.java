package com.kh.MNB.chat.model.vo;

import com.google.gson.Gson;

public class Chat {
	private String message;
	private String type;
	private String to;
	
	
	 
	public String getMessage() {
		return message;
	}



	public void setMessage(String message) {
		this.message = message;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getTo() {
		return to;
	}



	public void setTo(String to) {
		this.to = to;
	}



	public static Chat converMessage(String source) {
		Chat message = new Chat();
	    Gson gson = new Gson();
	    message = gson.fromJson(source, Chat.class);
	 
	    return message;
	}


//   private int cNo; // 채팅번호
//   private String sId; // 발신아이디
//   private String rId; // 수신아이디
//   private String content; // 내용
//   private String status; // 상태
//   
//   public Chat() {}
//
//   public Chat(int cNo, String sId, String rId, String content, String status) {
//      super();
//      this.cNo = cNo;
//      this.sId = sId;
//      this.rId = rId;
//      this.content = content;
//      this.status = status;
//   }
//
//   public int getcNo() {
//      return cNo;
//   }
//
//   public void setcNo(int cNo) {
//      this.cNo = cNo;
//   }
//
//   public String getsId() {
//      return sId;
//   }
//
//   public void setsId(String sId) {
//      this.sId = sId;
//   }
//
//   public String getrId() {
//      return rId;
//   }
//
//   public void setrId(String rId) {
//      this.rId = rId;
//   }
//
//   public String getContent() {
//      return content;
//   }
//
//   public void setContent(String content) {
//      this.content = content;
//   }
//
//   public String getStatus() {
//      return status;
//   }
//
//   public void setStatus(String status) {
//      this.status = status;
//   }
//
//   @Override
//   public String toString() {
//      return "Chat [cNo=" + cNo + ", sId=" + sId + ", rId=" + rId + ", content=" + content + ", status=" + status
//            + "]";
//   }
   
   
}