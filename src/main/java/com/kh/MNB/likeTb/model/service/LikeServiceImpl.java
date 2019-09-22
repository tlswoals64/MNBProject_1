package com.kh.MNB.likeTb.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.likeTb.model.dao.LikeDAO;
import com.kh.MNB.likeTb.model.vo.LikeTb;
import com.kh.MNB.member.model.vo.Member;

@Service("lService")
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	LikeDAO lDAO;
	
	@Override
	public int likeCheck(Member m) {
		return lDAO.likeCheck(m);
	}
	
	@Override
	public int likeAddBoard(LikeTb lk) {
		return lDAO.likeAddBoard(lk);
	}
	
	@Override
	public int likeCancleBoard(LikeTb lk) {
		return lDAO.likeCancleBoard(lk);
	}
	
}
