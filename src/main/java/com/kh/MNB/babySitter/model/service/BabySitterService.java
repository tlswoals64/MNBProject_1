package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.MNB.babySitter.model.vo.BabySitter;

import com.kh.MNB.babySitter.model.vo.Momboard;

import com.kh.MNB.babySitter.model.vo.sitterSuppot;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;

public interface BabySitterService { // 느슨한 결합구조때문에

	int getListCount();

	ArrayList<sitterSuppot> selectList(PageInfo pi);

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

	Momboard momboardUpdateForm(int bNo);

	int upDateMomBoard(Board board);

	int upDateMomAttachment(Attachment attachment);

	int upDateBcMojib(BabySitter babySitter);

	ArrayList<Reply> selectMomReplyList(int bNo);

	int insertMomReply(Reply r);

	int getSuppotSearchListCount(Map<String, Object> map);

	ArrayList<sitterSuppot> selectsuppotSearchList(Map<String, Object> map, PageInfo pi);

	int deleteSuppotBoard(int bNo);

	int deleteAttachment(int bNo);



	int deleteMomBoard(int bNo);

	int deleteMomAttachment(int bNo);


	
}
