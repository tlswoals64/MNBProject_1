package com.kh.MNB.memo.model.service;

import java.util.ArrayList;

import com.kh.MNB.memo.model.vo.Memo;

public interface MemoService {

	ArrayList<Memo> selectUserMemo(String userId); // 관리자용 고객 메모 select

	int insertMemo(Memo memo); // 관리자용 고객 메모 입력
	
}
