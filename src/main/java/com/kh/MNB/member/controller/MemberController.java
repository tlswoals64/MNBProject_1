package com.kh.MNB.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.exception.MemberException;
import com.kh.MNB.member.model.service.MemberService;
import com.kh.MNB.member.model.vo.Member;


@Controller
public class MemberController {
	@Autowired
	MemberService mService;
	
	
	
	//------------------------- 관리자 부분 ---------------------------
	@RequestMapping("manaHome.do")
	public String test() {
		System.out.println("들어왔다.");
		return "manager/managermainView";
	}
	
	@RequestMapping("mLevelList.do")
	public ModelAndView manaLevel(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = mService.getListCount(); // 전체 페이지 수
		
		System.out.println("멤버 수 : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // 페이지에대한 정보
		System.out.println("pi는 몇이니? : " + pi);
		
		ArrayList<Member> list = mService.selectmemberLevelList(pi);
		
		System.out.println("list 잘왔니 ?  : " + list);
		System.out.println(list.get(0).getMemberType());
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/managerMemberManaListView");
		}
		else {
			throw new MemberException("게시글 전체 조회에 실패하였습니다.");
		}
		
		return mv;
	}
}
