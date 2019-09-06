package com.kh.MNB.propose.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.propose.model.dao.ProposeDAO;
import com.kh.MNB.propose.model.vo.Propose;

@Service("pService")
public class ProposeServiceImpl implements ProposeService {
	
	@Autowired
	ProposeDAO pDAO;
	
	@Override
	public int getListCount() {
		return pDAO.getListCount();
	}
	
	@Override
	public ArrayList<Propose> selectQnaList(PageInfo pi) {
		return pDAO.selectQnaList(pi);
	}
	
	@Override
	public Propose mQnADetail(int pNo) {
		return pDAO.mQnADetail(pNo);
	}
	
	@Override
	public int mQnAReplyAdd(Propose p) {
		return pDAO.mQnAReplyAdd(p);
	}
	
}
