package com.kh.MNB.board.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;


public interface BoardService {

	int getListCount();

	ArrayList<Board> selectList(PageInfo pi);

	void addReadCount(int bNo);

	Board selectBoard(int bNo);

	int insertBoard(Board b);

	
}
