package com.kh.MNB.likeTb.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.likeTb.model.vo.LikeTb;
import com.kh.MNB.member.model.vo.Member;

@Repository("lDAO")
public class LikeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int likeCheck(LikeTb b) {
		return sqlSession.selectOne("likeMapper.likeCheck", b);
	}

	public int likeAddBoard(LikeTb lk) {
		return sqlSession.insert("likeMapper.likeAddBoard", lk);
	}

	public int likeCancleBoard(LikeTb lk) {
		return sqlSession.delete("likeMapper.likeCancleBoard", lk);
	}
}
