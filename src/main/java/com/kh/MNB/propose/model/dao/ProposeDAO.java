package com.kh.MNB.propose.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.propose.model.vo.Propose;

@Repository("pDAO")
public class ProposeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("proposeMapper.getListCount");
	}

	public ArrayList<Propose> selectQnaList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("proposeMapper.selectQnaList", null, rowBounds);
	}

	public Propose mQnADetail(int pNo) {
		return sqlSession.selectOne("proposeMapper.mQnADetail", pNo);
	}

	public int mQnAReplyAdd(Propose p) {
		return sqlSession.update("proposeMapper.mQnAReplyAdd", p);
	}
}
