package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;


public interface MemberService {
	// 느슨한 결합구조때문에
	
	int getListCount(); // 페이징처리를위해 전체갯수를 가져옴
	
	ArrayList<Member> selectmemberLevelList(PageInfo pi); //member list를 쭉 받아옴
	
}
