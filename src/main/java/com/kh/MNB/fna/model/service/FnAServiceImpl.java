package com.kh.MNB.fna.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.fna.model.dao.FnADAO;
import com.kh.MNB.fna.model.vo.FnA;

@Service("fService")
public class FnAServiceImpl implements FnAService {
	
	@Autowired
	FnADAO fDAO;

	@Override
	public ArrayList<FnA> fIntro() {
		return fDAO.fIntro();
	}
	
	@Override
	public int getFaqListCount() {
		return fDAO.getFaqListCount();
	}
	
	@Override
	public ArrayList<FnA> selectFaQList(PageInfo pi) {
		return fDAO.selectFaQList(pi);
	}
	
	@Override
	public int mFaqInsert(FnA f) {
		return fDAO.mFaqInsert(f);
	}
	
	@Override
	public FnA selectmfNaDetail(int fNo) {
		return fDAO.selectmfNaDetail(fNo);
	}
	
	@Override
	public int mFaqUpdate(FnA f) {
		return fDAO.mFaqUpdate(f);
	}
	
	@Override
	public int mFaQdelete(int fNo) {
		return fDAO.mFaQdelete(fNo);
	}
}
