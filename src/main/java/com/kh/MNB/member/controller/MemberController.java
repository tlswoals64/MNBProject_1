package com.kh.MNB.member.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.exception.MemberException;
import com.kh.MNB.member.model.service.MemberService;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.memo.model.service.MemoService;
import com.kh.MNB.memo.model.vo.Memo;



@SessionAttributes("loginUser")

@Controller
public class MemberController {
	@Autowired
	MemberService mService;
	
	@Autowired
	MemoService memoService;
	
	//---------로그인화면이동----------
		@RequestMapping("loginView.do")
		public String loginView() {
			return "login/loginView";
		}
		//-----------로그인 --------------
		@RequestMapping(value="login.do", method=RequestMethod.POST)
		public String MemberLogin(Member m, Model model) {
			System.out.println(m.getUserId());
			
			Member loginUser = mService.memberLogin(m);		
			 if (loginUser != null) {
				 if(loginUser.getUserId().equals("admin")) {
					 model.addAttribute("loginUser", loginUser);
					 return "manager/managermainView";
				 }else {
				 model.addAttribute("loginUser", loginUser); 
				 return "redirect:index.jsp";
				 }
			 } else {
				 throw new MemberException("로그인에 실패하였습니다.");
			}
			 
		}
		
		// ---------- 로그아웃 ----------
		@RequestMapping("logout.do")
		public String logout(SessionStatus status) {
			// SessionStatus : 커맨드 객체로 세션 상태를 관리할 수 있음
			status.setComplete();
			return "redirect:index.jsp";
		}
		
		//---------- 아이디 찾기 ----------
		@RequestMapping("idSearchView.do")
		public String idSearchView() {
			return "login/idSearchView";
		}
		@RequestMapping(value="idSearch.do", method=RequestMethod.POST)
		public String idSearch(@ModelAttribute Member m, Model model) {
			System.out.println(m);
			
			String id= mService.idSearch(m);
			System.out.println(id);
			if(id !=null) {
				model.addAttribute("searchId", id);
				return "login/idSearchResult";
			}else {
				throw new MemberException("아이디 찾기에 실패하였습니다.");
			}
		}
		
		
		//--------- 비밀번호 찾기-----------
		@RequestMapping("pwdIdCheck.do")
		public String pwdIdCheckView() {
			return "login/pwdIdCheckView";
		}
	
	//------------------------- ������ �κ� ---------------------------
	@RequestMapping("manaHome.do")
	public String test() {
		return "manager/managermainView";
	}
	
	// ȸ�� ���� ����Ʈ
	@RequestMapping("mManaList.do")
	public ModelAndView manaList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = mService.getListCount(); // ��ü ������ ��
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // ������������ ����
		
		ArrayList<Member> list = mService.selectmemberManaList(pi);
		
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
	public String mUserUpdate(HttpServletRequest request, Member m,
								   @RequestParam("address2") String address2,
								   @RequestParam("address3") String address3,
								   @RequestParam("address4") String address4) {
		
		m.setAddress(address2 + "/" + address3+ "/" + address4);
		
		int result = mService.mUserUpdate(m);
		if(result > 0) {
			return "redirect:mUserDetail.do?userId=" + m.getUserId();
		}
		else {
			throw new MemberException("ȸ������ ������ �����Ͽ����ϴ�.");
		}
	}
	
}
