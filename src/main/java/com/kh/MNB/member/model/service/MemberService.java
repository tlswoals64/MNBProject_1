package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;


public interface MemberService {
	
	int getListCount(); // 페이징처리를위해 전체갯수를 가져옴
	
	ArrayList<Member> selectmemberManaList(PageInfo pi); //member list를 쭉 받아옴

	int checkIdDup(String id);

	int insertMember(Member m);

	int checkNickName(String nickname);
	
	boolean send(String subject, String text, String from, String to);
	
	Member selectUserDetail(String userId); // member Detail ȸ������ �����

	int mUserUpdate(Member m);
	
}
