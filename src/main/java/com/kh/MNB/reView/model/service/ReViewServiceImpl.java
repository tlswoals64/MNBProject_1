package com.kh.MNB.reView.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.reView.model.dao.ReViewDAO;
import com.kh.MNB.reView.model.vo.ReVi;
import com.kh.MNB.reView.model.vo.ReView;

@Service("rvService")
public class ReViewServiceImpl implements ReViewService{
	
	@Autowired
	ReViewDAO rvDAO;

	@Override
	public int insertReview(Board b) {
		return rvDAO.insertReview(b);
	}

	@Override
	public int insertReviewAt(Attachment attachment) {
		return rvDAO.insertReviewAt(attachment);
	}

	@Override
	public int insertReviewRV(ReView review) {
		return rvDAO.insertReviewRV(review);
	}

	@Override
	public int getRvListCount() {
		return rvDAO.getRvListCount();
	}

	@Override
	public ArrayList<ReVi> selectRvlist(PageInfo pi) {
		return rvDAO.getselectRvlist(pi);
	}

	@Override
	public void addReviewCount(int bNo) {
		rvDAO.addReviewCount(bNo);
	}

	@Override
	public ReVi selectReViewDetail(int bNo) {
		return rvDAO.selectReViewDetail(bNo);
	}


	@Override
	public ReVi selectReViewUpdate(int bNo) {
		return rvDAO.selectReViewUpdate(bNo);
	}

	@Override
	public int updateRvBoard(Board board) {
		return rvDAO.updateRvBoard(board);
	}

	@Override
	public int updateRvAttachment(Attachment attachment) {
		return rvDAO.updateRvAttachment(attachment);
	}

	@Override
	public int updateReView(ReVi revi) {
		return rvDAO.updateReView(revi);
	}

	@Override
	public int deleteReView(int bNo) {
		return rvDAO.deleteReView(bNo);
	}

	@Override
	public int deleteImgReView(int bNo) {
		return rvDAO.deleteImgReView(bNo);
	}


	
}
