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

	

	@Override
	public ArrayList<Board> selectNanumIntro() {
		return bDAO.selectNanumIntro();
	}
	
	@Override
	public ArrayList<Board> selectComIntro() {
		return bDAO.selectComIntro();
	}

	@Override
	public void addNanumCount(int bNo) {
		   bDAO.addNanumCount(bNo);
		
	}
	
	@Override
	public int deleteSubNanumAttachment(ArrayList<Integer> deleteList) {
		return bDAO.deleteSubNanumBoard(deleteList);
	}
	
		//////////////////////////////////////////////////////////////////////////////////////////
	
	
	 @Override
	   public int insertComBoard(Board board) {
	      return bDAO.insertComBoard(board);
	   }

	   

	   @Override
	   public int insertComAttachment(ArrayList<Attachment> aList) {
	      return bDAO.insertComAttachment(aList);
	      }


	   @Override
	   public int getListCount1() {
	      return bDAO.getListCount1();
	   }

	   @Override
	   public ArrayList<Board> selectList1(PageInfo pi) {
	      return bDAO.selectList1(pi);
	   }


	   @Override
	   public int insertReply1(Reply r) {
	      return bDAO.insertReply1(r);
	   }

	   @Override
	   public void addReadCount1(int bNo) {
	      bDAO.addReadCount(bNo);
	   }

	   @Override
	   public Attachment selectBoard1(int bNo) {
	      return bDAO.selectBoard1(bNo);
	      
	   }

	   @Override
	   public ArrayList<Propose> selectProList(PageInfo pi) {
	      return bDAO.selectProList(pi);
	   }

	   @Override
	   public int getListCountPro() {
	      return bDAO.getListCountPro();
	   }

	   @Override
	   public Board selectBoard2(int bNo) {
	      return bDAO.selectBoard2(bNo);
	   }



	   @Override
	   public ArrayList<Reply> selectUserReply(int bNo) {
	      return bDAO.selectUserReply(bNo);
	   }


	   @Override
	   public int insertReplyMH(Reply reply) {
	      return bDAO.insertReplyMH(reply);
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
	   public int insertProBoard(Board b) {
	      return bDAO.insertProBoard(b);
	   }
	   
	   @Override
	   public int insertProAttachment(ArrayList<Attachment> aList) {
	      return bDAO.insertProAttachment1(aList);
	   }
	   
	   @Override
	   public Attachment selectPicBoard1(int bNo) {
	      return bDAO.selectPicBoard1(bNo);
	   }
	   
	   @Override
	   public Attachment selectPicBoard2(int bNo) {
	      return bDAO.selectPicBoard2(bNo);
	   }
	   
	   @Override
	public ArrayList<Board> mDectopList() {
		return bDAO.mDectopList();
	}
	   @Override
	public ArrayList<Board> mQnatopList() {
		return bDAO.mQnatopList();
	}
	   
	   @Override
	public int getManaListCount() {
		   return bDAO.getManaListCount();
	}
	   
	   @Override
	public ArrayList<Board> selectNoticeList(PageInfo pi) {
		   return bDAO.selectNoticeList(pi);
	}
	  
	  @Override
	public Board mNoticeDetail(int bNo) {
		 return bDAO.mNoticeDetail(bNo);
	}
	
	  @Override
	public int mNoticeUpdate(Board b) {
		return bDAO.mNoticeUpdate(b);
	}
	  @Override
	public int mNoticeInsert(Board b) {
		return bDAO.mNoticeInsert(b);
	}
	  
	  @Override
	public int mNoticedelete(int bNo) {
		return bDAO.mNoticedelete(bNo);
	}
	  
	  @Override
	public ArrayList<Board> comTopList() {
		return bDAO.comTopList();
	}
	  @Override
	public ArrayList<Board> nanumTopList() {
		  return bDAO.nanumTopList();
	}

}
