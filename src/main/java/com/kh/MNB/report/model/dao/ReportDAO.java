package com.kh.MNB.report.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("rDAO")
public class ReportDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
