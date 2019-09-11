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

	public ArrayList<Board> selectList(PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("boardMapper.selectNanumList", null, rowBounds);
	}

	public int getListCount() {
		return sqlSession.selectOne("boardMapper.getListNanumCount");
	}

	public int insertBoard(Board b) {
		return sqlSession.insert("boardMapper.insertNanumBoard", b);
	}

	public int insertAttachment(ArrayList<Attachment> aList) {

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

	public int insertReply(Reply r) {
		return sqlSession.insert("boardMapper.insertReply", r);
	}

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

	public ArrayList<Attachment> selectBoard1(int bNo) {
		ArrayList<Attachment> list =  (ArrayList)sqlSession.selectList("boardMapper.selectOne1",bNo);
		
		return list;
	}

	public ArrayList<Propose> selectProList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("boardMapper.selectProList", null, rowBounds);
		
	}

	public int getListCountPro() {
		// TODO Auto-generated method stub
		return 0;
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

	
	
	
	




}
