package com.kh.MNB.report.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.report.model.vo.Report;

@Repository("rDAO")
public class ReportDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("reportMapper.getListCount");
	}

	public ArrayList<Report> selectmemberLevelList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("reportMapper.selectmemberLevelList", null, rowBounds);
	}

	public Report mReportDetail(int rNo) {
		return sqlSession.selectOne("reportMapper.mReportDetail", rNo);
	}
}
