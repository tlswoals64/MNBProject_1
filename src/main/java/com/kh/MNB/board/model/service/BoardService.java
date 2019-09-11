package com.kh.MNB.board.model.service;

import java.util.ArrayList;


import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.propose.model.vo.Propose;



public interface BoardService {

	int getListNanumCount();

	ArrayList<Board> selectNanumList(PageInfo pi);

	int insertNanumBoard(Board b);

	int insertNanumAttachment(ArrayList<Attachment> aList);

	int insertNanumReply(Reply r);

	// ������
	int getListCount1();

	// ������
	ArrayList<Board> selectList1(PageInfo pi);

	int insertBoard1(Board board);

	int insertAttachment1(ArrayList<Attachment> aList1);

	int insertReply1(Reply r);

	//������������
	void addReadCount1(int bNo);
	//������������

	ArrayList<Attachment> selectBoard1(int bNo);

	ArrayList<Propose> selectProList(PageInfo pi);

	int getListCountPro();

	Board selectBoard2(int bNo);

	ArrayList<Reply> selectUserReply(int bNo);

	int insertReplyMH(Reply reply);






	
}
