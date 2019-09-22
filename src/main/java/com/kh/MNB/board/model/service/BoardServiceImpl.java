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
import com.kh.MNB.report.model.vo.Report;


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
	  
	  
	  // 민상 ----------------------------------------

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
		public Attachment selectPicBoard3(int bNo) {
			return bDAO.selectPicBoard3(bNo);
		}
		
		//문의사항 조회수증가
		@Override
		public void addProReadCount(int bNo) {
			bDAO.addProReadCount(bNo);
		}
		
		@Override
		public Board selectProBoard(int bNo) {
			return bDAO.selectProBoard(bNo);
		}
		
		//문의사항 글쓰기
		@Override
		public int insertPropose(Propose p) {
			return bDAO.insertPropose(p);
		}
		
		@Override
		public Propose selectPropose(int bNo) {
			return bDAO.selectPropose(bNo);
		}
		
	@Override
	public int updateProBoard(Board b) {
		return bDAO.updateProBoard(b);
	}

	@Override
	public int deleteProBoard(int bNo) {
		return bDAO.deleteProBoard(bNo);
	}
		@Override
		public Board selectRepBoard(int bNo) {
			return bDAO.selectRepBoard(bNo);
		}
		
		@Override
		public int insertReport(Report r) {
			return bDAO.insertReport(r);
		}
		
		
		//정보공유 수정사진
		@Override
		public int insertComupAttachment(ArrayList<Attachment> aList) {
			return bDAO.insertComupAttachment(aList);
		}
		
		//정보공유 제목+내용검색
		@Override
		public ArrayList<Board> searchComtitleCon(PageInfo pi, String search) {
			return bDAO.searchComtitleCon(pi,search);
		}
		
		//정보공유 검색(페이징갯수)(제목+내용)
		@Override
		public int getSearchCount(String search) {
			return bDAO.getSearchCount(search);
		}
		//페이징 제목
		@Override
		public int getSearchCounttitle(String search) {
			return bDAO.getSearchCounttitle(search);
		}
		
		//정보공유제목
		@Override
		public ArrayList<Board> searchComtitle(PageInfo pi, String search) {
			return bDAO.searchComtitle(pi,search);
		}
		// 정보공유내용
		@Override
		public ArrayList<Board> searchComcon(PageInfo pi, String search) {
			return bDAO.searchComcon(pi,search);
		}
		// 정보공유닉네임검색
		@Override
		public ArrayList<Board> searchComnic(PageInfo pi, String search) {
			return bDAO.searchComnic(pi,search);
		}
		// 정보공유 내용검색 페이징
		@Override
		public int getSearchCountcon(String search) {
			return bDAO.getSearchCountcon(search);
		}
		//정보공유 닉네임 페이징
		@Override
		public int getSearchCountnic(String search) {
			return bDAO.getSearchCountnic(search);
		}
		
		@Override
		public int deleteReply(Reply reply) {
		
			return bDAO.deleteReply(reply);
		}
		
		@Override
		public int updateReply(Reply reply) {
			return bDAO.updateReply(reply);
		}
		
		@Override
		public int getnotListCount() {
			return bDAO.getnotListCount();
		}
		
		@Override
		public ArrayList<Board> noticeList(PageInfo pi) {
			return bDAO.noticeList(pi);
		}
		@Override
		public void addReadCountNot(int bNo) {
			bDAO.addRaddReadCountNot(bNo);
		}
		@Override
		public Board detailNot(int bNo) {
			return bDAO.detailNot(bNo);
		}
		//사진삭제
		@Override
		public int comPicDelete(int iNo11) {
			return bDAO.comPicDelete(iNo11);
		}


}
