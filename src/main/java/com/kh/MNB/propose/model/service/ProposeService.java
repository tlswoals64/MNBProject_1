package com.kh.MNB.propose.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.propose.model.vo.Propose;

public interface ProposeService {

	int getListCount();

	ArrayList<Propose> selectQnaList(PageInfo pi);

	Propose mQnADetail(int pNo);

	int mQnAReplyAdd(Propose p);
	
}
