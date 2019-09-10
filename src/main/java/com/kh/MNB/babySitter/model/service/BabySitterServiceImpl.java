package com.kh.MNB.babySitter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.babySitter.model.dao.BabySitterDAO;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;

@Service("bsService")
public class BabySitterServiceImpl implements BabySitterService {
	
	@Autowired
	BabySitterDAO bsDAO;

	@Override
	public int getListCount() {
		return bsDAO.getListCount();
	}

	@Override
	public ArrayList selectList(PageInfo pi) {
		return bsDAO.selectList(pi);
	}
	
	
}
