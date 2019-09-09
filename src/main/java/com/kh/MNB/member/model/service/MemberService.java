package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;


public interface MemberService {
	
	int getListCount(); // ����¡
	
	ArrayList<Member> selectmemberManaList(PageInfo pi); //member list ȸ�� ������

	Member selectUserDetail(String userId); // member Detail ȸ������ �����


	int mUserUpdate(Member m);

	Member memberLogin(Member m);

	String idSearch(Member m);
	
}
