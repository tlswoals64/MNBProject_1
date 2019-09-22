package com.kh.MNB.fna.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.fna.model.vo.FnA;


public interface FnAService {

	ArrayList<FnA> fIntro();

	int getFaqListCount();

	ArrayList<FnA> selectFaQList(PageInfo pi);

	int mFaqInsert(FnA f);

	FnA selectmfNaDetail(int fNo);

	int mFaqUpdate(FnA f);

	int mFaQdelete(int fNo);

	

	
}
