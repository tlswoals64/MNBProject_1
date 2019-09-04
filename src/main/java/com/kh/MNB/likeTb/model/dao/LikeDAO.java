package com.kh.MNB.likeTb.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("lDAO")
public class LikeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
