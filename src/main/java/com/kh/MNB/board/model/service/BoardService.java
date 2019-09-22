package com.kh.MNB.board.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.propose.model.vo.Propose;
import com.kh.MNB.report.model.vo.Report;

public interface BoardService {

   int getListNanumCount();

   ArrayList<Board> selectNanumList(PageInfo pi);

   int insertNanumBoard(Board b);

   int insertNanumAttachment(ArrayList<Attachment> aList);

   int insertNanumReply(Reply r);

   ArrayList<Reply> selectNanumReplyList(int bNo);

   ArrayList<PictureBoard> selectNanumBoard(int bNo);

   int updateNanumBoard(Board board);

   int updateNanumAttachment(ArrayList<Attachment> aList);

   int deleteNanumBoard(int bNo);

   int insertSubNanumAttachment(ArrayList<Attachment> insertList);

   ArrayList<Board> selectNanumIntro();

   ArrayList<Board> selectComIntro();

   int deleteSubNanumAttachment(ArrayList<Integer> deleteList);

   void addNanumCount(int bNo);
   //////////////////////////////////////////////////////////////////////////////////


	
	//민상 --------------------------------------------
	// 정보공유
		int getListCount1();

		// 정보공유
		ArrayList<Board> selectList1(PageInfo pi);

		int insertReply1(Reply r);

		//디테일페이지
		void addReadCount1(int bNo);
		//디테일페이지

		Attachment selectBoard1(int bNo);

		ArrayList<Propose> selectProList(PageInfo pi);

		int getListCountPro();

		Board selectBoard2(int bNo);

		ArrayList<Reply> selectUserReply(int bNo);

		int insertReplyMH(Reply reply);

		int updateComBoard(Board b);

		int deleteComBoard(int bNo);

		int insertProBoard(Board board);

		int insertProAttachment(ArrayList<Attachment> aList);

		Attachment selectPicBoard1(int bNo);

		Attachment selectPicBoard2(int bNo);

		int insertComBoard(Board board);

		int insertComAttachment(ArrayList<Attachment> aList);

   

		Attachment selectPicBoard3(int bNo);

		void addProReadCount(int bNo);


		Board selectProBoard(int bNo);

		int insertPropose(Propose p);

		Propose selectPropose(int bNo);

		int updateProBoard(Board b);

		int deleteProBoard(int bNo);

		Board selectRepBoard(int bNo);

		int insertReport(Report r);

		int insertComupAttachment(ArrayList<Attachment> aList);


		ArrayList<Board> searchComtitleCon(PageInfo pi, String search);

		int getSearchCount(String search);

		ArrayList<Board> searchComtitle(PageInfo pi, String search);

		ArrayList<Board> searchComcon(PageInfo pi, String search);

		ArrayList<Board> searchComnic(PageInfo pi, String search);

		int getSearchCounttitle(String search);

		int getSearchCountcon(String search);

		int getSearchCountnic(String search);

		int deleteReply(Reply reply);

		int updateReply(Reply reply);

		int getnotListCount();

		ArrayList<Board> noticeList(PageInfo pi);

		void addReadCountNot(int bNo);

		Board detailNot(int bNo);

		int comPicDelete(int iNo11);

   ArrayList<Board> mDectopList();

   ArrayList<Board> mQnatopList();

   int getManaListCount();

   ArrayList<Board> selectNoticeList(PageInfo pi);

   Board mNoticeDetail(int bNo);

   int mNoticeUpdate(Board b);

   int mNoticeInsert(Board b);

   int mNoticedelete(int bNo);

   ArrayList<Board> comTopList();

   ArrayList<Board> nanumTopList();


   

}