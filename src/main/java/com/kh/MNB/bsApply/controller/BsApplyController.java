package com.kh.MNB.bsApply.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.bsApply.model.exception.BsApplyException;
import com.kh.MNB.bsApply.model.service.BsApplyService;
import com.kh.MNB.bsApply.model.vo.BSApply;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.exception.MemberException;
import com.kh.MNB.member.model.service.MemberService;
import com.kh.MNB.member.model.vo.Member;

@Controller
public class BsApplyController {
	@Autowired
	BsApplyService bsaService;
	MemberService mService;

	// 회원 레벨 리스트
	@RequestMapping("mLevelList.do")
	public ModelAndView manaLevel(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = bsaService.getListCount(); // 전체 페이지 수

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // 페이지에대한 정보

		ArrayList<BSApply> list = bsaService.selectmemberLevelList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/managerMemberLevelListView");
		} else {
			throw new BsApplyException("게시글 전체 조회에 실패하였습니다.");
		}

		return mv;
	}
	
	// 상세페이지
	@RequestMapping("mApplyDetail.do")
	public ModelAndView mUserDetail(HttpServletRequest request, ModelAndView mv) {
		String userId = request.getParameter("userId");
		BSApply b = bsaService.selectBsaDetail(userId);
		if(b != null) {
			mv.addObject("b", b);
			mv.setViewName("manager/managerMemberLevelDetailList");
		}
		else {
			throw new BsApplyException("회원정보 조회에 실패하였습니다.");
		}
		return mv;
	}
	
	// 회원레벨 변경
	@RequestMapping("mUserLevelUpdate.do")
	public String mUserLevelUpdate(@RequestParam("userId") String userId, @RequestParam("memberType") int memberType) {
		System.out.println("userId : " + userId);
		System.out.println("memberType : " + memberType);
		
		Member m = new Member(userId, memberType);
		int result = bsaService.levelUpdate(m);
		
		if(result > 0) {
			return "redirect:mLevelList.do";
		}
		else {
			throw new BsApplyException("회원정보 조회에 실패하였습니다.");
		}

	}
}
