package com.kh.MNB.propose.model.vo;

public class Propose {

	private int pNo; //게시글번호
	private int pType; // 게시글분류
	private String pRe; // 답변여부
	
	public Propose() {
		super();
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

	@Override
	public String toString() {
		return "Porpose [pNo=" + pNo + ", pType=" + pType + ", pRe=" + pRe + "]";
	}
	
	
	
}
