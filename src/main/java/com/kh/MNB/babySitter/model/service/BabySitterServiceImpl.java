package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.babySitter.model.dao.BabySitterDAO;
import com.kh.MNB.babySitter.model.vo.BabySitter;
import com.kh.MNB.babySitter.model.vo.Momboard;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;

@Service("bsService")
public class BabySitterServiceImpl implements BabySitterService {
	
	@Autowired
	BabySitterDAO bsDAO;

	@Override
	public int getListCount() {
		return bsDAO.getListCount();
	}

	@Override
	public ArrayList selectList(PageInfo pi) {
		return bsDAO.selectList(pi);
	}

	@Override
	public int insertMomBoard(Board b) {
		return bsDAO.insertMomBoard(b);
	}

	@Override
	public int insertMomAttachment(Attachment a) {
		return bsDAO.insertMomAttachment(a);
	}

	@Override
	public int insertBcMojib(BabySitter bs) {
		return bsDAO.insertBcMojib(bs);
	}

	@Override
	public ArrayList selectMomlist(PageInfo pi) {
		return bsDAO.selectMomlist(pi);
	}

	@Override
	public int getMomListCount() {
		return bsDAO.getMomListCount();
	}

	@Override
	public Momboard selectDetail(Board board) {
		// TODO Auto-generated method stub
		return bsDAO.selectDetail(board);

	}
	
	
}
