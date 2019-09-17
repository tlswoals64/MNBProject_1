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
		return sqlSession.update("boardMapper.updateComBoard", b);
	}

	public int deleteComBoard(int bNo) {
		return sqlSession.update("boardMapper.deleteComBoard", bNo);
	}

	//���ǻ��� �μ�Ʈ
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

	//�������� ������ ���� 2��°��
	public Attachment selectPicBoard1(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectPicOne1",bNo);
		
		return list;
	}

	public Attachment selectPicBoard2(int bNo) {
	Attachment list =  sqlSession.selectOne("boardMapper.selectPicOne2",bNo);
		
		return list;
	}

	public Attachment selectPicBoard3(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectPicOne3",bNo);
		
		return list;
	}

	public Attachment selectupPBoard1(int bNo) {
		
		Attachment list =  sqlSession.selectOne("boardMapper.selectupPOne1",bNo);
		
		return list;
	
	}

	public Attachment selectupPBoard2(int bNo) {
		Attachment list =  sqlSession.selectOne("boardMapper.selectupPOne2",bNo);
		
		return list;
	}

	public Attachment selectupPBoard3(int bNo) {
	Attachment list =  sqlSession.selectOne("boardMapper.selectupPOne3",bNo);
		
		return list;
	}

	public Attachment selectupPBoard4(int bNo) {
	Attachment list =  sqlSession.selectOne("boardMapper.selectupPOne4",bNo);
		
		return list;
	}

	
	
	
	





}
