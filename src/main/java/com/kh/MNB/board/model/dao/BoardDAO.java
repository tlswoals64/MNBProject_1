package com.kh.MNB.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.propose.model.vo.Propose;
import com.kh.MNB.report.model.vo.Report;

@Repository("bDAO")
public class BoardDAO {


	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	

	public ArrayList<Board> selectNanumIntro() {
		return (ArrayList)sqlSession.selectList("boardMapper.selectNanumIntro");
	}

	public ArrayList<Board> selectComIntro() {
		return (ArrayList)sqlSession.selectList("boardMapper.selectComIntro");
	}

	public ArrayList<Board> mDectopList() {
		return (ArrayList)sqlSession.selectList("boardMapper.mDectopList");
	}

	public ArrayList<Board> mQnatopList() {
		return (ArrayList)sqlSession.selectList("boardMapper.mQnatopList");
	}

	public int getManaListCount() {
		return sqlSession.selectOne("boardMapper.getManaListCount");
	}

	public ArrayList<Board> selectNoticeList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectNoticeList", null, rowBounds);
	}

	public Board mNoticeDetail(int bNo) {
		return sqlSession.selectOne("boardMapper.mNoticeDetail", bNo);
	}

	public int mNoticeUpdate(Board b) {
		return sqlSession.update("boardMapper.mNoticeUpdate", b);
	}

	public int mNoticeInsert(Board b) {
		return sqlSession.insert("boardMapper.mNoticeInsert", b);
	}

	public int mNoticedelete(int bNo) {
		return sqlSession.insert("boardMapper.mNoticedelete", bNo);
	}

	public ArrayList<Board> comTopList() {
		return (ArrayList)sqlSession.selectList("boardMapper.comTopList");
	}

	public ArrayList<Board> nanumTopList() {
		return (ArrayList)sqlSession.selectList("boardMapper.nanumTopList");
	}
	
	
	// 민상이꺼 -----------------------------------------
	// 정보공유
		public int getListCount1() {
			
			return sqlSession.selectOne("boardMapper.getListComCount");
		}
		
		// 정보공유
		public ArrayList<Board> selectList1(PageInfo pi) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList) sqlSession.selectList("boardMapper.selectComList", null, rowBounds);
		}

		public int insertBoard1(Board b) {
			return sqlSession.insert("boardMapper.insertComBoard", b);
		}

		public int insertAttachment1(ArrayList<Attachment> aList1) {
			int result = 0;
			for(int i = 0; i < aList1.size(); i++) {
				if(i == 0) {
					result = sqlSession.insert("boardMapper.insertComAttachment0", aList1.get(0));
				}
				else {
				
					result = sqlSession.insert("boardMapper.insertComAttachment", aList1.get(i));
				}
			}
			
			return result;
		}
		
		public int insertReply1(Reply r) {
			return sqlSession.insert("boardMapper.insertReply1", r);
		}

		//정보공유 디테일
		public void addReadCount(int bNo) {
			
			sqlSession.update("boardMapper.updateCount1", bNo);
		}
		//정보공유 디테일

		public Attachment selectBoard1(int bNo) {
			Attachment list =  sqlSession.selectOne("boardMapper.selectOne1",bNo);
			
			return list;
		}

		public ArrayList<Propose> selectProList(PageInfo pi) {
			
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

			return (ArrayList) sqlSession.selectList("boardMapper.selectProList", null, rowBounds);
			
		}

		public int getListCountPro() {
			return sqlSession.selectOne("boardMapper.getListProCount");
		}

		public Board selectBoard2(int bNo) {
			return sqlSession.selectOne("boardMapper.selectOne2", bNo);
		}
		
		public ArrayList<Reply> selectUserReply(int bNo) {
			return (ArrayList)sqlSession.selectList("boardMapper.userReplyList", bNo);
		}

		public int insertReplyMH(Reply reply) {
			return sqlSession.insert("boardMapper.insertReplyMH", reply);
		}

		public int updateComBoard(Board b) {
			System.out.println("업데이트 dAO");
			return sqlSession.update("boardMapper.updateComBoard", b);
		}

		public int deleteComBoard(int bNo) {
			return sqlSession.update("boardMapper.deleteComBoard", bNo);
		}

		//문의사항 인서트
		public int insertProBoard(Board b) {
			return sqlSession.insert("boardMapper.insertProBoard", b);
		}

		public int insertProAttachment1(ArrayList<Attachment> aList) {
			int result = 0;
			for(int i = 0; i < aList.size(); i++) {
				if(i == 0) {
					result = sqlSession.insert("boardMapper.insertProAttachment0", aList.get(0));
				}
				else {
				
					result = sqlSession.insert("boardMapper.insertProAttachment", aList.get(i));
				}
			}
			
			return result;
		}

		//정보공유 디테일 사진 2번째꺼
		public Attachment selectPicBoard1(int bNo) {
			Attachment list =  sqlSession.selectOne("boardMapper.selectPicOne1",bNo);
			
			return list;
		}

		public Attachment selectPicBoard2(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectPicOne2",bNo);
			
			return list;
		}

		public int insertComBoard(Board board) {
			return sqlSession.insert("boardMapper.insertComBoard", board);
		}

		public int insertComAttachment(ArrayList<Attachment> aList) {

			int result = 0;
			System.out.println("aList!!!!:"+aList);
			for(int i = 0; i < aList.size(); i++) {
				if(i == 0) {
					result = sqlSession.insert("boardMapper.insertComAttachment0", aList.get(0));
				}
				else {
					result = sqlSession.insert("boardMapper.insertComAttachment", aList.get(i));
				}
			}
			
			return result;
		}

		public Attachment selectPicBoard3(int bNo) {
			
		Attachment list =  sqlSession.selectOne("boardMapper.selectPicOne3",bNo);
			
			return list;
		}

		public Attachment selectComupPBoard1(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectComupPBoard1",bNo);
			
			return list;
		}

		public Attachment selectComupPBoard2(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectComupPBoard2",bNo);
			
			return list;
		}

		public Attachment selectComupPBoard3(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectComupPBoard3",bNo);
			
			return list;
		}

		public Attachment selectComupPBoard4(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectComupPBoard4",bNo);
			
			return list;
		}

		public void addProReadCount(int bNo) {
			sqlSession.update("boardMapper.updateProCount", bNo);
			
		}

		public Board selectProBoard(int bNo) {
			return sqlSession.selectOne("boardMapper.selectProBoard", bNo);
		}

		public int insertPropose(Propose p) {
			return sqlSession.insert("boardMapper.insertPropose", p);
		}

		public Propose selectPropose(int bNo) {
		
			return sqlSession.selectOne("boardMapper.selectPropose", bNo);
		}

		public int updateProBoard(Board b) {
			return sqlSession.update("boardMapper.updateProBoard", b);
		}

		public int deleteProBoard(int bNo) {

			return sqlSession.update("boardMapper.deleteProBoard", bNo);
		}

		public Board selectRepBoard(int bNo) {
			return sqlSession.selectOne("boardMapper.selectRepBoard", bNo);
		}


		public int insertReport(Report r) {
			return sqlSession.insert("boardMapper.insertReport", r);
		}

		public int insertComupAttachment(ArrayList<Attachment> aList) {
		
			int result = 0;

			for(int i = 0; i < aList.size(); i++) {
				if(i == 0) {
					result = sqlSession.update("boardMapper.insertComupAttachment0", aList.get(0));
				}
				else {
					result = sqlSession.insert("boardMapper.insertComupAttachment", aList.get(i));
				}
			}
			
			return result;
		}


		public ArrayList<Board> searchComtitleCon(PageInfo pi, String search) {
			
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList) sqlSession.selectList("boardMapper.searchComtitleCon", search, rowBounds);
		}

		public int getSearchCount(String search) {
			return sqlSession.selectOne("boardMapper.getSearchCount", search);
		}

		public ArrayList<Board> searchComtitle(PageInfo pi, String search) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList) sqlSession.selectList("boardMapper.searchComtitle", search, rowBounds);
		}

		public ArrayList<Board> searchComcon(PageInfo pi, String search) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList) sqlSession.selectList("boardMapper.searchComcon", search, rowBounds);
		}

		public ArrayList<Board> searchComnic(PageInfo pi, String search) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList) sqlSession.selectList("boardMapper.searchComnic", search, rowBounds);
		}

		public int getSearchCounttitle(String search) {
			return sqlSession.selectOne("boardMapper.getSearchCounttitle", search);
		}

		public int getSearchCountcon(String search) {
			return sqlSession.selectOne("boardMapper.getSearchCountcon", search);
		}

		public int getSearchCountnic(String search) {
			return sqlSession.selectOne("boardMapper.getSearchCountnic", search);
		}

		public int deleteReply(Reply reply) {
			
			return sqlSession.delete("boardMapper.deleteReply", reply);
		}

		public int updateReply(Reply reply) {
			return sqlSession.update("boardMapper.updateReply", reply);
		}

		//공지사항 리스트카운트
		public int getnotListCount() {
			return sqlSession.selectOne("boardMapper.getnotListCount");
		}
		
		
		public ArrayList<Board> noticeList(PageInfo pi) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList) sqlSession.selectList("boardMapper.noticeList", null, rowBounds);
		}

		public void addRaddReadCountNot(int bNo) {
			sqlSession.update("boardMapper.addRaddReadCountNot", bNo);
		}

		public Board detailNot(int bNo) {
			return sqlSession.selectOne("boardMapper.detailNot", bNo);
		}

		public int comPicDelete(int iNo11) {
			System.out.println("dao옴");
			return sqlSession.update("boardMapper.comPicDelete",iNo11);
		}


	
	

   @Autowired
   SqlSessionTemplate sqlSession;

   public ArrayList<Board> selectNanumList(PageInfo pi) {

      int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

      RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

      return (ArrayList) sqlSession.selectList("boardMapper.selectNanumList", null, rowBounds);
   }

   public int getListNanumCount() {
      return sqlSession.selectOne("boardMapper.getListNanumCount");
   }

   public int insertNanumBoard(Board b) {
      return sqlSession.insert("boardMapper.insertNanumBoard", b);
   }

   public int insertNanumAttachment(ArrayList<Attachment> aList) {

      int result = 0;
      for(int i = 0; i < aList.size(); i++) {
         if(i == 0) {
            result = sqlSession.insert("boardMapper.insertNanumAttachment0", aList.get(0));
         }
         else {
            result = sqlSession.insert("boardMapper.insertNanumAttachment", aList.get(i));
         }
      }
      
      return result;
   }

   public int insertNanumReply(Reply r) {
      return sqlSession.insert("boardMapper.insertNanumReply", r);
   }

   public ArrayList<Reply> selectNanumReplyList(int bNo) {
      return (ArrayList)sqlSession.selectList("boardMapper.selectNanumReplyList", bNo);
   }

   public ArrayList<PictureBoard>  selectNanumBoard(int bNo) {
      return     (ArrayList)sqlSession.selectList("boardMapper.selectNanumOne", bNo);
   }

   public int updateNanumBoard(Board board) {
      return sqlSession.update("boardMapper.updateNanumBoard", board);
   }

   public int updateNanumAttachment(ArrayList<Attachment> aList) {
      
      int result = 0;
      for(int i = 0; i < aList.size(); i++) {
         result += sqlSession.update("boardMapper.updateNanumAttachment", aList.get(i));
      }
      
      return result;
   }

   public int deleteNanumBoard(int bNo) {
      return sqlSession.update("boardMapper.deleteNanumBoard", bNo);
   }

   public int insertSubNanumAttachment(ArrayList<Attachment> insertList) {
      int result = 0;
      for(int i = 0; i < insertList.size(); i++) {
         result += sqlSession.update("boardMapper.insertSubNanumAttachment", insertList.get(i));
      }
      
      return result;
   }
   
   public int deleteSubNanumBoard(ArrayList<Integer> deleteList) {
      return sqlSession.delete("boardMapper.deleteSubNanumAttachment", deleteList);
   }
   
   public void addNanumCount(int bNo) {
      sqlSession.update("boardMapper.updateNanumCount", bNo);
      }
   
   /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
}