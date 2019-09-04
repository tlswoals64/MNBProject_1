package com.kh.MNB.babySitter.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("bsDAO")
public class BabySitterDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
}
