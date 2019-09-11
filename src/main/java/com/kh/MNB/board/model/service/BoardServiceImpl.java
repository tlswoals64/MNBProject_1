package com.kh.MNB.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.dao.BoardDAO;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.propose.model.vo.Propose;


@Service("bService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO bDAO;

	@Override
	public int getListCount() {
		return bDAO.getListCount();


	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		return bDAO.selectList(pi);
	}

	

	@Override
	public int insertBoard(Board b) {
		return bDAO.insertBoard(b);
	}

	
	@Override
	public int insertAttachment(ArrayList<Attachment> aList) {
		return bDAO.insertAttachment(aList);
	}

	
	@Override
	public int insertReply(Reply r) {
		return bDAO.insertReply(r);
	}

	@Override
	public int getListCount1() {
		return bDAO.getListCount1();
	}

	@Override
	public ArrayList<Board> selectList1(PageInfo pi) {
		return bDAO.selectList1(pi);
	}

	@Override
	public int insertBoard1(Board b) {
		return bDAO.insertBoard1(b);
	}

	@Override
	public int insertAttachment1(ArrayList<Attachment> aList1) {
		return bDAO.insertAttachment1(aList1);
	}

	@Override
	public int insertReply1(Reply r) {
		return bDAO.insertReply1(r);
	}

	@Override
	public void addReadCount1(int bNo) {
		bDAO.addReadCount(bNo);
	}

	@Override
	public ArrayList<Attachment> selectBoard1(int bNo) {
		return bDAO.selectBoard1(bNo);
		
	}

	@Override
	public ArrayList<Propose> selectProList(PageInfo pi) {
		return bDAO.selectProList(pi);
	}

	@Override
	public int getListCountPro() {
		return bDAO.getListCountPro();
	}

	@Override
	public Board selectBoard2(int bNo) {
		return bDAO.selectBoard2(bNo);
	}



	@Override
	public ArrayList<Reply> selectUserReply(int bNo) {
		return bDAO.selectUserReply(bNo);
	}


	@Override
	public int insertReplyMH(Reply reply) {
		return bDAO.insertReplyMH(reply);
	}
	
}
