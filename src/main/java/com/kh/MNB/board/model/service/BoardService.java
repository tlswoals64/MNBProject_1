package com.kh.MNB.board.model.service;

import java.util.ArrayList;


import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;



public interface BoardService {

	int getListCount();

	ArrayList<Board> selectList(PageInfo pi);


	int insertBoard(Board b);

	int insertAttachment(ArrayList<Attachment> aList);

	int insertReply(Reply r);

	
}
