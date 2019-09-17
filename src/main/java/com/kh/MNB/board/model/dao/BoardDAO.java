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

@Repository("bDAO")
public class BoardDAO {

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
		return 	 (ArrayList)sqlSession.selectList("boardMapper.selectNanumOne", bNo);
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
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	  public int insertComBoard(Board b) {
	      return sqlSession.insert("boardMapper.insertComBoard", b);
	   }


	   
	   
	   public int insertComReply(Reply r) {
	      return sqlSession.insert("boardMapper.insertComReply", r);
	   }


	   //정보공유 디테일
	      public void addComReadCount(int bNo) {
	         
	         sqlSession.update("boardMapper.updateComCount", bNo);
	      }
	   //정보공유 디테일


	   public ArrayList<Propose> selectProList(PageInfo pi) {
	      
	      int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

	      RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

	      return (ArrayList) sqlSession.selectList("boardMapper.selectProList", null, rowBounds);
	      
	   }



	   public Board selectComBoard(int bNo) {
	      return sqlSession.selectOne("boardMapper.selectComOne", bNo);
	   }
	   
	   public ArrayList<Reply> selectUserReply(int bNo) {
	      return (ArrayList)sqlSession.selectList("boardMapper.userReplyList", bNo);
	   }

	   public int insertReplyMH(Reply reply) {
	      return sqlSession.insert("boardMapper.insertReplyMH", reply);
	   }

	   public int updateComBoard(Board b) {
	      return sqlSession.update("boardMapper.updateComBoard", b);
	   }

	   public int deleteComBoard(int bNo) {
	      return sqlSession.update("boardMapper.deleteComBoard", bNo);
	   }

	   //���ǻ��� �μ�Ʈ
	   public int insertProBoard(Board b) {
	      return sqlSession.insert("boardMapper.insertProBoard", b);
	   }

	   public int insertProAttachment(ArrayList<Attachment> aList) {
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
	   //�������� ������ ���� 2��°��
	   public Attachment selectComPicBoard1(int bNo) {
	      Attachment list =  sqlSession.selectOne("boardMapper.selectComPicOne1",bNo);
	      
	      return list;
	   }

	   public Attachment selectComPicBoard2(int bNo) {
	   Attachment list =  sqlSession.selectOne("boardMapper.selectComPicOne2",bNo);
	      
	      return list;
	   }

	   public Attachment selectComPicBoard3(int bNo) {
	      Attachment list =  sqlSession.selectOne("boardMapper.selectComPicOne3",bNo);
	      
	      return list;
	   }
	   
	   public Attachment selectComPicBoard4(int bNo) {
	      Attachment list =  sqlSession.selectOne("boardMapper.selectComPicOne4",bNo);
	      
	      return list;
	   }

	   public Attachment selectComupPBoard1(int bNo) {
	      
	      Attachment list =  sqlSession.selectOne("boardMapper.selectComupPOne1",bNo);
	      
	      return list;
	   
	   }

	   public Attachment selectComupPBoard2(int bNo) {
	      Attachment list =  sqlSession.selectOne("boardMapper.selectComupPOne2",bNo);
	      
	      return list;
	   }

	   public Attachment selectComupPBoard3(int bNo) {
	   Attachment list =  sqlSession.selectOne("boardMapper.selectComupPOne3",bNo);
	      
	      return list;
	   }

	   public Attachment selectComupPBoard4(int bNo) {
	   Attachment list =  sqlSession.selectOne("boardMapper.selectComupPOne4",bNo);
	      
	      return list;
	   }

	   public int getComListCount() {
	      return sqlSession.selectOne("boardMapper.getListComCount");
	   }



	   public int insertComAttachment(ArrayList<Attachment> aList) {
	      int result = 0;

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
	   
	   //정보공유 리스트
	   public ArrayList<Board> selectComList(PageInfo pi) {
	      int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

	      RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

	      return (ArrayList) sqlSession.selectList("boardMapper.selectComList", null, rowBounds);
	   }




	   public int getProListCount() {
	      // TODO Auto-generated method stub
	      return 0;
	   }

}
