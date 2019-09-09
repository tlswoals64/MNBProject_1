package com.kh.MNB.board.model.service;

import java.util.ArrayList;


import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;



public interface BoardService {

	int getListNanumCount();

	ArrayList<Board> selectNanumList(PageInfo pi);


	int insertNanumBoard(Board b);

	int insertNanumAttachment(ArrayList<Attachment> aList);

	int insertNanumReply(Reply r);

	
}
