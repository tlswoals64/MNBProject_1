package com.kh.MNB.likeTb.model.service;

import java.util.ArrayList;

import com.kh.MNB.likeTb.model.vo.LikeTb;
import com.kh.MNB.member.model.vo.Member;


public interface LikeService {

	int likeCheck(Member m);

	int likeAddBoard(LikeTb lk);

	int likeCancleBoard(LikeTb lk);
	
}
