package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;


public interface MemberService {
	// ������ ���ձ���������
	
	int getListCount(); // ����¡ó�������� ��ü������ ������
	
	ArrayList<Member> selectmemberLevelList(PageInfo pi); //member list�� �� �޾ƿ�

	Member selectUserDetail(String userId); // member Detail�� �޾ƿ�

	int mUserDelete(String userId);
	
}
