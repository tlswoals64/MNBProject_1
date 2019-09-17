package com.kh.MNB.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.dao.BoardDAO;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.propose.model.vo.Propose;


@Service("bService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO bDAO;

	@Override
	public int getListNanumCount() {
		return bDAO.getListNanumCount();


	}

	@Override
	public ArrayList<Board> selectNanumList(PageInfo pi) {
		return bDAO.selectNanumList(pi);
	}

	

	@Override
	public int insertNanumBoard(Board b) {
		return bDAO.insertNanumBoard(b);
	}

	
	@Override
	public int insertNanumAttachment(ArrayList<Attachment> aList) {
		return bDAO.insertNanumAttachment(aList);
	}

	
	@Override
	public int insertNanumReply(Reply r) {
		return bDAO.insertNanumReply(r);
	}

	@Override
	public ArrayList<Reply> selectNanumReplyList(int bNo) {
		return bDAO.selectNanumReplyList(bNo);
	}

	@Override
	public ArrayList<PictureBoard>  selectNanumBoard(int bNo) {
		return bDAO.selectNanumBoard(bNo);
	}

	@Override
	public int updateNanumBoard(Board board) {
		return bDAO.updateNanumBoard(board);
	}

	@Override
	public int updateNanumAttachment(ArrayList<Attachment> aList) {
		return bDAO.updateNanumAttachment(aList);
	}

	@Override
	public int deleteNanumBoard(int bNo) {
		return bDAO.deleteNanumBoard(bNo);
	}

	@Override
	public int insertSubNanumAttachment(ArrayList<Attachment> insertList) {
		return bDAO.insertSubNanumAttachment(insertList);
	}

	
		//////////////////////////////////////////////////////////////////////////////////////////
	
	
	 @Override
	   public int getComListCount() {
	      return bDAO.getComListCount();
	   }

	   @Override
	   public ArrayList<Board> selectComList(PageInfo pi) {
	      return bDAO.selectComList(pi);
	   }

	   @Override
	   public int insertComBoard(Board board) {
	      return bDAO.insertComBoard(board);
	   }

	   @Override
	   public int insertComAttachment(ArrayList<Attachment> aList) {
	      return bDAO.insertComAttachment(aList);
	   }

	   @Override
	   public int insertProBoard(Board board) {
	      return bDAO.insertProBoard(board);
	   }

	   @Override
	   public int insertProAttachment(ArrayList<Attachment> aList) {
	      return bDAO.insertProAttachment(aList);
	   }

	   @Override
	   public int insertComReply(Reply r) {
	      return bDAO.insertComReply(r);
	   }

	   @Override
	   public void addComReadCount(int bNo) {
	      bDAO.addComReadCount(bNo);
	   }

	   @Override
	   public Attachment selectComPicBoard1(int bNo) {
	      return bDAO.selectComPicBoard1(bNo);
	   }

	   @Override
	   public Attachment selectComPicBoard2(int bNo) {
	      return bDAO.selectComPicBoard2(bNo);
	   }

	   @Override
	   public Attachment selectComPicBoard3(int bNo) {
	      return bDAO.selectComPicBoard3(bNo);
	   }

	   @Override
	   public Attachment selectComPicBoard4(int bNo) {
	      return bDAO.selectComPicBoard4(bNo);
	   }

	   @Override
	   public Board selectComBoard(int bNo) {
	      
	      return bDAO.selectComBoard(bNo);
	   }

	   @Override
	   public int getProListCount() {
	      return bDAO.getProListCount();
	   }

	   @Override
	   public ArrayList<Propose> selectProList(PageInfo pi) {
	      
	      return bDAO.selectProList(pi);
	   }

	   @Override
	   public Attachment selectComupPBoard1(int bNo) {
	      return bDAO.selectComupPBoard1(bNo);
	   }

	   @Override
	   public Attachment selectComupPBoard2(int bNo) {
	      return bDAO.selectComupPBoard2(bNo);
	   }

	   @Override
	   public Attachment selectComupPBoard3(int bNo) {
	      return bDAO.selectComupPBoard3(bNo);
	   }

	   @Override
	   public Attachment selectComupPBoard4(int bNo) {
	      return bDAO.selectComupPBoard4(bNo);
	   }

	   @Override
	   public int updateComBoard(Board b) {
	      return bDAO.updateComBoard(b);
	   }

	   @Override
	   public int deleteComBoard(int bNo) {
	      return bDAO.deleteComBoard(bNo);
	   }

	   @Override
	   public ArrayList<Reply> selectUserReply(int bNo) {
	      return bDAO.selectUserReply(bNo);
	   }

	   @Override
	   public int insertReplyMH(Reply reply) {
	      return bDAO.insertReplyMH(reply);
	   }

	
}
