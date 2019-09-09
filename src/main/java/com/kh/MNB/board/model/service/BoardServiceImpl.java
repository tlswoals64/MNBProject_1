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
	
}
