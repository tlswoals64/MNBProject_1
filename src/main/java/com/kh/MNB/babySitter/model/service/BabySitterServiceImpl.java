package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.babySitter.model.dao.BabySitterDAO;
import com.kh.MNB.babySitter.model.vo.BabySitter;

import com.kh.MNB.babySitter.model.vo.Momboard;

import com.kh.MNB.babySitter.model.vo.sitterSuppot;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;

import oracle.net.aso.b;

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

	public int insertMomBoard(Board board) {
		return bsDAO.insertMomBoard(board);
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



	public int insertSuppotBoard(Board board) {
		return bsDAO.insertSuppotBoard(board);
	}

	@Override
	public int insertSuppotAttachment(Attachment attachment) {
		return bsDAO.insertSuppotAttachment(attachment);
	}

	@Override
	public int insertSuppot(BabySitter suppot) {
		return bsDAO.insertSuppot(suppot);
	}

	@Override
	public int updateSuppotBoard(Board board) {
		return bsDAO.updateSuppotBoard(board);
	}

	@Override
	public int updateAttachment(Attachment attachment) {
		return bsDAO.updateAttachment(attachment);
	}

	@Override
	public int updateSuppot(BabySitter suppot) {
		return bsDAO.updateSuppot(suppot);
	}

	@Override
	public void addReadCount(int bNo) {
		bsDAO.addReadCount(bNo);
	}

	@Override
	public sitterSuppot selectSuppotBoard(int bNo) {
		return bsDAO.selectSuppotBoard(bNo);
	}

	@Override
	public ArrayList<Reply> selectSuppotReplyList(int bNo) {
		return bsDAO.selectSuppotReplyList(bNo);
	}

	@Override
	public int insertSuppotReply(Reply r) {
		return bsDAO.insertSuppotReply(r);

	}

	@Override
	public Momboard selectDetail(int bNo) {
		
		return bsDAO.selectDetail(bNo);
	}

	@Override
	public void addMomReadCount(int bNo) {
		bsDAO.addMomReadCount(bNo);
		
	}



	
}
