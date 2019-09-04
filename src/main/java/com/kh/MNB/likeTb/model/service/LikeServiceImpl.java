package com.kh.MNB.likeTb.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.likeTb.model.dao.LikeDAO;

@Service("lService")
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	LikeDAO lDAO;
	
	
}
