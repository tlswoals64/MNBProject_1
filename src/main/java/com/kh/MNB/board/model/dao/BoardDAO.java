package com.kh.MNB.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;

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

}
