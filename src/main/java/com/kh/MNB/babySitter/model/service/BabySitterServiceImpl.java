package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.babySitter.model.dao.BabySitterDAO;
import com.kh.MNB.babySitter.model.vo.BabySitter;
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
	public ArrayList<Reply> selectReplyList(int bNo) {
		return bsDAO.selectReplyList(bNo);
	}

	@Override
	public int insertReply(Reply r) {
		return bsDAO.insertReply(r);
	}
	
	
}
