package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;


public interface MemberService {
	
	int getListCount(); // 페이징
	
	ArrayList<Member> selectmemberManaList(PageInfo pi); //member list 회원 관리용

	Member selectUserDetail(String userId); // member Detail 회원관리 보기용


	int mUserUpdate(Member m);
	
}
