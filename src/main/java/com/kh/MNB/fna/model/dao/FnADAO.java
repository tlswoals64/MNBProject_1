package com.kh.MNB.fna.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.fna.model.vo.FnA;

@Repository("fDAO")
public class FnADAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<FnA> fIntro() {
		return (ArrayList)sqlSession.selectList("FnAMapper.listView");
	}
}
