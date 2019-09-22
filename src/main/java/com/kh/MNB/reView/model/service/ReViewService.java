package com.kh.MNB.reView.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.reView.model.vo.ReVi;
import com.kh.MNB.reView.model.vo.ReView;

public interface ReViewService {

	int insertReview(Board b);

	int insertReviewAt(Attachment attachment);

	int insertReviewRV(ReView review);

	int getRvListCount();

	ArrayList<ReVi> selectRvlist(PageInfo pi);

	void addReviewCount(int bNo);

	ReVi selectReViewDetail(int bNo);

	ReVi selectReViewUpdate(int bNo);

	int updateRvBoard(Board board);

	int updateRvAttachment(Attachment attachment);

	int updateReView(ReVi revi);

	int deleteReView(int bNo);

	int deleteImgReView(int bNo);

}
