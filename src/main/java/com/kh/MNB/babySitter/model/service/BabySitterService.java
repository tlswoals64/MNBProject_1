package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;

public interface BabySitterService { // 느슨한 결합구조때문에

	int getListCount();

	ArrayList selectList(PageInfo pi);
	
}
