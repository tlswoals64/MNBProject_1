package com.kh.MNB.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.dao.BoardDAO;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;


@Service("bService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO bDAO;

	@Override
	public int getListNanumCount() {
		return bDAO.getListNanumCount();


	}

	@Override
	public ArrayList<Board> selectNanumList(PageInfo pi) {
		return bDAO.selectNanumList(pi);
	}

	

	@Override
	public int insertNanumBoard(Board b) {
		return bDAO.insertNanumBoard(b);
	}

	
	@Override
	public int insertNanumAttachment(ArrayList<Attachment> aList) {
		return bDAO.insertNanumAttachment(aList);
	}

	
	@Override
	public int insertNanumReply(Reply r) {
		return bDAO.insertNanumReply(r);
	}

	@Override
	public ArrayList<Reply> selectNanumReplyList(int bNo) {
		return bDAO.selectNanumReplyList(bNo);
	}

	@Override
	public ArrayList<PictureBoard>  selectNanumBoard(int bNo) {
		return bDAO.selectNanumBoard(bNo);
	}

	@Override
	public int updateNanumBoard(Board board) {
		return bDAO.updateNanumBoard(board);
	}

	@Override
	public int updateNanumAttachment(ArrayList<Attachment> aList) {
		return bDAO.updateNanumAttachment(aList);
	}

	@Override
	public int deleteNanumBoard(int bNo) {
		return bDAO.deleteNanumBoard(bNo);
	}

	@Override
	public int insertSubNanumAttachment(ArrayList<Attachment> insertList) {
		return bDAO.insertSubNanumAttachment(insertList);
	}


	
}
