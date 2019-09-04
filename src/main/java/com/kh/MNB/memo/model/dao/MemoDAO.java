package com.kh.MNB.memo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.memo.model.vo.Memo;

@Repository("memoDAO")
public class MemoDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<Memo> selectUserMemo(String userId) {
		return (ArrayList)sqlSession.selectList("memoMapper.selectList", userId);
	}

	public int insertMemo(Memo memo) {
		return sqlSession.insert("memoMapper.insertMemo", memo);
	}
}
