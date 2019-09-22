package com.kh.MNB.fna.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.fna.model.vo.FnA;

@Repository("fDAO")
public class FnADAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<FnA> fIntro() {
		return (ArrayList)sqlSession.selectList("FnAMapper.listView");
	}

	public int getFaqListCount() {
		return sqlSession.selectOne("FnAMapper.getFaqListCount");
	}

	public ArrayList<FnA> selectFaQList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("FnAMapper.selectFaQList", null, rowBounds);
	}

	public int mFaqInsert(FnA f) {
		return sqlSession.insert("FnAMapper.mFaqInsert", f);
	}

	public FnA selectmfNaDetail(int fNo) {
		return sqlSession.selectOne("FnAMapper.selectmfNaDetail", fNo);
	}

	public int mFaqUpdate(FnA f) {
		return sqlSession.update("FnAMapper.mFaqUpdate", f);
	}

	public int mFaQdelete(int fNo) {
		return sqlSession.delete("FnAMapper.mFaQdelete", fNo);
	}
}
