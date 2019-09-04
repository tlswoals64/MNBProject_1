package com.kh.MNB.memo.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.memo.model.dao.MemoDAO;
import com.kh.MNB.memo.model.vo.Memo;

@Service("memoService")
public class MemoServiceImpl implements MemoService {
	
	@Autowired
	MemoDAO memoDAO;
	
	public MemoServiceImpl() {
	}
	
	@Override
	public ArrayList<Memo> selectUserMemo(String userId) {
		return (ArrayList<Memo>)memoDAO.selectUserMemo(userId);
	}
	
	@Override
	public int insertMemo(Memo memo) {
		return memoDAO.insertMemo(memo);
	}
}
