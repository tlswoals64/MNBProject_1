package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;

import com.kh.MNB.babySitter.model.vo.BabySitter;

import com.kh.MNB.babySitter.model.vo.Momboard;

import com.kh.MNB.babySitter.model.vo.sitterSuppot;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;

public interface BabySitterService { // 느슨한 결합구조때문에

	int getListCount();

	ArrayList selectList(PageInfo pi);


	int insertMomBoard(Board board);

	int insertMomAttachment(Attachment a);

	int insertBcMojib(BabySitter bs);

	ArrayList selectMomlist(PageInfo pi);

	int getMomListCount();

	Momboard selectDetail(int bNo);

	int insertSuppotBoard(Board board);

	int insertSuppotAttachment(Attachment attachment);

	int insertSuppot(BabySitter suppot);

	int updateSuppotBoard(Board board);

	int updateAttachment(Attachment attachment);

	int updateSuppot(BabySitter suppot);

	void addReadCount(int bNo);

	sitterSuppot selectSuppotBoard(int bNo);

	ArrayList<Reply> selectSuppotReplyList(int bNo);

	int insertSuppotReply(Reply r);

	void addMomReadCount(int bNo);


	
}
