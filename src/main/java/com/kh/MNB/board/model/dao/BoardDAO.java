package com.kh.MNB.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;

@Repository("bDAO")
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int getListCount() {

		return sqlSession.selectOne("boardMapper.getListCount");
	}

	public ArrayList<Board> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", null, rowBounds);
	}

	public void addReadCount(int bNo) {
		sqlSession.update("boardMapper.updateCount", bNo);
	}

	public Board selectBoard(int bNo) {
		return sqlSession.selectOne("boardMapper.selectOne", bNo);
	}

	public int insertBoard(Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}
}
