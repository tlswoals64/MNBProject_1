package com.kh.MNB.chat.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("cDAO")
public class ChatDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
