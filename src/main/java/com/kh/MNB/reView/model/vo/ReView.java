package com.kh.MNB.reView.model.vo;

public class ReView {
	
	private int bNo;
	private int BEva;
	public ReView() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReView(int bNo, int bEva) {
		super();
		this.bNo = bNo;
		BEva = bEva;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int getBEva() {
		return BEva;
	}
	public void setBEva(int bEva) {
		BEva = bEva;
	}
	
	
	

}
