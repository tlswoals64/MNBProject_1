package com.kh.MNB.babySitter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.babySitter.model.vo.BabySitter;
import com.kh.MNB.babySitter.model.vo.sitterSuppot;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;

@Repository("bsDAO")
public class BabySitterDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("babySitterMapper.getsuppotListCount");
	}

	public ArrayList<sitterSuppot> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("babySitterMapper.selectSuppotList", null, rowBounds);
	}

	public int insertSuppotBoard(Board board) {
		return sqlSession.insert("babySitterMapper.insertSuppotBoard", board);
	}

	public int insertSuppotAttachment(Attachment attachment) {
		return sqlSession.insert("babySitterMapper.insertSuppotAttachment", attachment);
	}

	public int insertSuppot(BabySitter suppot) {
		return sqlSession.insert("babySitterMapper.insertSuppot", suppot);
	}

	public int updateSuppotBoard(Board board) {
		return sqlSession.update("babySitterMapper.updateSuppotBoard", board);
	}

	public int updateAttachment(Attachment attachment) {
		return sqlSession.update("babySitterMapper.updateAttachment", attachment);
	}

	public int updateSuppot(BabySitter suppot) {
		return sqlSession.update("babySitterMapper.updateSuppot", suppot);
	}

	public void addReadCount(int bNo) {
		sqlSession.update("babySitterMapper.addReadCount", bNo);
	}

	public sitterSuppot selectSuppotBoard(int bNo) {
		return sqlSession.selectOne("babySitterMapper.selectSuppotBoard", bNo);
	}

	public ArrayList<Reply> selectReplyList(int bNo) {
		return (ArrayList)sqlSession.selectList("babySitterMapper.selectReplyList", bNo);
	}

	public int insertReply(Reply r) {
		return sqlSession.insert("babySitterMapper.insertReply", r);
	}
	
}
