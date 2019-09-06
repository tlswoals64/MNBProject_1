package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.dao.MemberDAO;
import com.kh.MNB.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO mDAO;
	
	public MemberServiceImpl() {
	}
	
	@Override
	public int getListCount() {
		return mDAO.getListCount();
	}
	
	@Override
	public ArrayList<Member> selectmemberManaList(PageInfo pi) {
		return mDAO.selectmemberManaList(pi);
	}
	
	@Override
	public Member selectUserDetail(String userId) {
		return mDAO.selectUserDetail(userId);
	}
	
	@Override
	public int mUserUpdate(Member m) {
		return mDAO.mUserUpdate(m);
	}
	
	
}
