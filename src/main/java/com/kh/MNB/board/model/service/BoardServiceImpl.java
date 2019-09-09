package com.kh.MNB.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.dao.BoardDAO;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
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
	
}
