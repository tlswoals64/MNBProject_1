package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;


public interface MemberService {
	

	int checkIdDup(String id);

	int getListCount(); // ����¡
	
	ArrayList<Member> selectmemberManaList(PageInfo pi); //member list ȸ�� ������

	int insertMember(Member m);

	int checkNickName(String nickname);
	
	boolean send(String subject, String text, String from, String to);
	
	Member selectUserDetail(String userId); // member Detail ȸ������ �����

	int mUserUpdate(Member m);

	Member memberLogin(Member m);

	String idSearch(Member m);

	String pwdSearch(String userId);

	Member detailMember(String userId);

	int updateMember(Member m);

	int pwdUpdate(Member m);

	int getmyListCount(String bWriter);

	ArrayList<Board> myBoardList(PageInfo pi, String bWriter);


	
}
