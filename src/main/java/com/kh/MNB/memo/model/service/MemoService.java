package com.kh.MNB.memo.model.service;

import java.util.ArrayList;

import com.kh.MNB.memo.model.vo.Memo;

public interface MemoService {

	ArrayList<Memo> selectUserMemo(String userId); // �����ڿ� �� �޸� select

	int insertMemo(Memo memo); // �����ڿ� �� �޸� �Է�
	
}
