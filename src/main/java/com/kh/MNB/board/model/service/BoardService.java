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

	ArrayList<Reply> selectNanumReplyList(int bNo);

	ArrayList<PictureBoard>  selectNanumBoard(int bNo);

	int updateNanumBoard(Board board);

	int updateNanumAttachment(ArrayList<Attachment> aList);

	int deleteNanumBoard(int bNo);

	int insertSubNanumAttachment(ArrayList<Attachment> insertList);

	
	//////////////////////////////////////////////////////////////////////////////////
	
	
	 int getComListCount();

	   ArrayList<Board> selectComList(PageInfo pi);

	   int insertComBoard(Board board);

	   int insertComAttachment(ArrayList<Attachment> aList);

	   int insertProBoard(Board board);

	   int insertProAttachment(ArrayList<Attachment> aList);

	   int insertComReply(Reply r);

	   void addComReadCount(int bNo);

	   Attachment selectComPicBoard1(int bNo);

	   Attachment selectComPicBoard2(int bNo);

	   Attachment selectComPicBoard3(int bNo);

	   Attachment selectComPicBoard4(int bNo);

	   Board selectComBoard(int bNo);

	   int getProListCount();

	   ArrayList<Propose> selectProList(PageInfo pi);

	   Attachment selectComupPBoard1(int bNo);

	   Attachment selectComupPBoard2(int bNo);

	   Attachment selectComupPBoard3(int bNo);

	   Attachment selectComupPBoard4(int bNo);

	   int updateComBoard(Board b);

	   int deleteComBoard(int bNo);

	   ArrayList<Reply> selectUserReply(int bNo);

	   int insertReplyMH(Reply reply);

	
}
