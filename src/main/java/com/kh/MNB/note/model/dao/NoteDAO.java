package com.kh.MNB.note.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ntDAO")
public class NoteDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
}
