package com.kh.MNB.reView.model.vo;

public class ReView {
	
	private int bNo;
	private int bEva;
	
	public ReView() {
	}

	
	public ReView(int bNo, int bEva) {
		super();
		this.bNo = bNo;
		this.bEva = bEva;
	}


	public int getbNo() {
		return bNo;
	}


	public void setbNo(int bNo) {
		this.bNo = bNo;
	}


	public int getbEva() {
		return bEva;
	}


	public void setbEva(int bEva) {
		this.bEva = bEva;
	}


	@Override
	public String toString() {
		return "ReView [bNo=" + bNo + ", bEva=" + bEva + "]";
	}
	
	

	
	

}
