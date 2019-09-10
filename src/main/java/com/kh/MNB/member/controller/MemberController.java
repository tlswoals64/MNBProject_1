package com.kh.MNB.member.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	private Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	
	   @RequestMapping("memberSingUp.do")
	   public String memberSingUp() {
	      return "member/singUpForm";
	   }
	   
	   @RequestMapping("dupid.do")
	   public ModelAndView idDuplicateCheck(ModelAndView mv, String id) {
	      Map<String, Boolean> map = new HashMap<String, Boolean>();
	      boolean isUsable = mService.checkIdDup(id) == 0 ? true : false;
	      
	      map.put("isUsable", isUsable);
	      mv.addAllObjects(map);
	      mv.setViewName("jsonView");
	      
	      return mv;
	   }
	   
	   @RequestMapping("isNick.do")
	   public void idDuplicateCheck(HttpServletResponse response, String nickname) throws IOException {
	      
	      boolean checkNickName = mService.checkNickName(nickname) == 0 ? true : false;
	      
	      response.getWriter().print(checkNickName);
	   }
	   
	   // 회원가입
	   @RequestMapping("minsert.do")
	   public String memberInsert(@ModelAttribute Member m, @RequestParam("address") String address, @RequestParam("detailAddress") String detailAddress, @RequestParam("extraAddress") String extraAddress, @RequestParam("addEmail") String addEmail) {
	      
	      System.out.println(m);
	      
	      /*
	         1. 결과 값을 받아보면 할글이 깨짐
	            스프링에서 제공하는 필터를 이용해서 요청 시 전달 받는 값에 한글이 있을 경우 인코딩 하는 것 추가
	            
	         2. 비밀번호 평문
	            bcrypt : 스프링 시큐리티 모듈에서 제공하는 암호화 방식
	      */
	      
	      String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
	      // encPwd : 암호화된 비밀번호
	      m.setUserPwd(encPwd);
	      String email = m.getEmail() + "@" + addEmail;
	      m.setEmail(email);
	      m.setAddress(address + "/" + detailAddress + "/" + extraAddress);
	      
	      System.out.println(m);
	      int result = mService.insertMember(m);
	      
	      if(result > 0) {
	         return "redirect:index.jsp";
	         
	      } else {
	         throw new MemberException("회원가입에 실패하였습니다.");
	      }
	   }
	   
	   @RequestMapping(value = "sendMail.do", method = RequestMethod.POST)
	   @ResponseBody
	   public boolean sendMail(HttpSession session, @RequestParam String email) {
	      String randomCode = UUID.randomUUID().toString().replaceAll("-", ""); // -를 제거해 주었다. 
	      randomCode = randomCode.substring(0, 6);
	      String joinCode = String.valueOf(randomCode);
	      session.setAttribute("joinCode", joinCode);
	      
	      System.out.println(joinCode);
	      
	      String subject = "회원 가입 승인번호 입니다.";
	      StringBuilder sb = new StringBuilder();
	      sb.append("회원가입 승인 번호는 ").append(joinCode).append(" 입니다.");
	      
	      return mService.send(subject, sb.toString(), "seok1721@gamil.com", email);
	   }
		
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
			if (bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {			
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
//		비밀번호 찾기전 아이디 체크		
		@RequestMapping(value="pwdIdSearch.do", method=RequestMethod.POST)
		public String pwdSearch(@RequestParam("userId") String userId, Model model) {
			
			System.out.println(userId);
			String result= mService.pwdSearch(userId);
			
			if(result!=null) {
			model.addAttribute("pwdSearch", result);
			return "login/pwdSearchForm";
			}else {
				throw new MemberException("아이디 찾기에 실패하였습니다.");
			}			
		}
		
		@RequestMapping("pwdSerach.do")
		public String pwdSearch() {
			return "login/pwdChange";
		}
		
	
	//------------------------- ������ �κ� ---------------------------
	@RequestMapping("manaHome.do")
	public String test() {
		return "manager/managermainView";
	}

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
