package com.kh.MNB.babySitter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.babySitter.model.vo.sitterSuppot;
import com.kh.MNB.board.model.vo.PageInfo;

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
	
}
