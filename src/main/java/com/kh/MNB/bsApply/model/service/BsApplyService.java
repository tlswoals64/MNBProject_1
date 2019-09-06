package com.kh.MNB.bsApply.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.bsApply.model.vo.BSApply;
import com.kh.MNB.member.model.vo.Member;

public interface BsApplyService {

	ArrayList<BSApply> selectmemberLevelList(PageInfo pi);

	int getListCount();

	BSApply selectBsaDetail(String userId);

	int levelUpdate(Member m);

	
}
