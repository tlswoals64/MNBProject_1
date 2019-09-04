package com.kh.MNB.propose.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pDAO")
public class ProposeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
