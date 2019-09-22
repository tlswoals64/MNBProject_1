package com.kh.MNB.reView.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.reView.model.vo.ReVi;
import com.kh.MNB.reView.model.vo.ReView;

@Repository("rvDAO")
public class ReViewDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertReview(Board b) {
		return sqlSession.insert("reViewMapper.insertReview", b);
	}

	public int insertReviewAt(Attachment attachment) {
		return sqlSession.insert("reViewMapper.insertReviewAt", attachment);
	}

	public int insertReviewRV(ReView review) {
		return sqlSession.insert("reViewMapper.insertReviewRV", review);
	}

	public int getRvListCount() {
		return sqlSession.selectOne("reViewMapper.selectgrList");
	}

	public ArrayList<ReVi> getselectRvlist(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reViewMapper.getselectRvlist", null, rowBounds);
	
	}

	public void addReviewCount(int bNo) {
		sqlSession.update("reViewMapper.addReviewCount", bNo);
	}

	public ReVi selectReViewDetail(int bNo) {
		return sqlSession.selectOne("reViewMapper.selectReViewDetail",bNo);
	}
	public ReVi selectReViewUpdate(int bNo) {
		return sqlSession.selectOne("reViewMapper.selectReViewUpdate",bNo);
	}

	public int updateRvBoard(Board board) {
		return sqlSession.update("reViewMapper.updateRvBoard",board);
	}

	public int updateRvAttachment(Attachment attachment) {
		return sqlSession.update("reViewMapper.updateRvAttachment",attachment);
	}

	public int updateReView(ReVi revi) {
		return sqlSession.update("reViewMapper.updateReView",revi);
	}

	public int deleteReView(int bNo) {
		return sqlSession.update("reViewMapper.deleteReView", bNo);
	}

	public int deleteImgReView(int bNo) {
		return sqlSession.update("reViewMapper.deleteImgReView", bNo);
	}

	
}
