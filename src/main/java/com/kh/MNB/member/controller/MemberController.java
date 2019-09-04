package com.kh.MNB.member.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.exception.MemberException;
import com.kh.MNB.member.model.service.MemberService;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.memo.model.service.MemoService;
import com.kh.MNB.memo.model.vo.Memo;


@Controller
public class MemberController {
	@Autowired
	MemberService mService;
	
	@Autowired
	MemoService memoService;
	
	
	//------------------------- ������ �κ� ---------------------------
	@RequestMapping("manaHome.do")
	public String test() {
		return "manager/managermainView";
	}
	
	// ȸ�� ��� ����Ʈ
	@RequestMapping("mLevelList.do")
	public ModelAndView manaLevel(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = mService.getListCount(); // ��ü ������ ��
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // ������������ ����
		
		ArrayList<Member> list = mService.selectmemberLevelList(pi);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/managerMemberManaListView");
		}
		else {
			throw new MemberException("�Խñ� ��ü ��ȸ�� �����Ͽ����ϴ�.");
		}
		
		return mv;
	}
	
	// ȸ������ ������ ������
	@RequestMapping("mUserDetail.do")
	public ModelAndView mUserDetail(HttpServletRequest request, ModelAndView mv) {
		String userId = request.getParameter("userId");
		Member m = mService.selectUserDetail(userId);
		if(userId != null) {
			mv.addObject("m", m);
			mv.setViewName("manager/managerMemberManaDetailView");
		}
		else {
			throw new MemberException("ȸ������ ��ȸ�� �����Ͽ����ϴ�.");
		}
		return mv;
	}
	
	// ȸ������ ������ �������� �޸�ҷ����� �Լ�
	@RequestMapping("memo.do")
	public void getReplyList(HttpServletResponse response, String userId) throws IOException {
		ArrayList<Memo> memoList = memoService.selectUserMemo(userId);
		for(Memo m : memoList) {
			m.setContent(URLEncoder.encode(m.getContent(), "utf-8"));
		}
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(memoList, response.getWriter());
	}
	
	// �޸� �߰�
	@RequestMapping("addMemo.do")
	public void insertReply(HttpServletResponse response, String mContent, String userId) throws IOException {
		
		Memo memo = new Memo();
		memo.setUserId(userId);
		memo.setContent(mContent);
		
		int result = memoService.insertMemo(memo);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(result, response.getWriter());
		
	}
	
	// ȸ������
	@RequestMapping("mUserUpdate.do")
	public void mUserUpdate(HttpServletRequest request, ModelAndView mv, Member m) {
		System.out.println("�ߵ��ñ��? : " + m);
		//int result = mService.mUserDelete(m);
		//if(result > 0) {
			//return "redirect:mUserDetail.do?userId=" + m;
		//}
		//else {
			//throw new MemberException("ȸ������ ������ �����Ͽ����ϴ�.");
		//}
	}
}
