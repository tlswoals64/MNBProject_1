package com.kh.MNB.fna.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fDAO")
public class FnADAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
