package com.kh.MNB.bsApply.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	// 회원등급 리스트
	@RequestMapping("mLevelList.do")
	public ModelAndView manaLevel(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = bsaService.getListCount(); 

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<BSApply> list = bsaService.selectmemberLevelList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("manager/managerMemberLevelListView");
		} else {
			throw new BsApplyException("회원등급 리스트 불러오기에 실패했습니다.");
		}

		return mv;
	}
	
	// 회원등급 디테일
	@RequestMapping("mApplyDetail.do")
	public ModelAndView mUserDetail(HttpServletRequest request, ModelAndView mv) {
		String userId = request.getParameter("userId");
		BSApply b = bsaService.selectBsaDetail(userId);
		if(b != null) {
			mv.addObject("b", b);
			mv.setViewName("manager/managerMemberLevelDetailList");
		}
		else {
			throw new BsApplyException("회원등급 신청 보기에 실패했습니다");
		}
		return mv;
	}
	
	// 회원 등급수정
	@RequestMapping("mUserLevelUpdate.do")
	public String mUserLevelUpdate(BSApply b) {
		System.out.println("b : " + b);

		int result = bsaService.levelUpdate(b);
		
		if(result > 0) {
			return "redirect:mLevelList.do";
		}
		else {
			throw new BsApplyException("회원등급 수정에 실패했습니다.");
		}

	}
	
	@RequestMapping("sitterApplyPage.do")
	public ModelAndView sitterApply(HttpSession session, ModelAndView mv) {
		Member m = (Member)session.getAttribute("loginUser");
		
		if(m != null) {
            mv.addObject("m", m);
            mv.setViewName("common/SitterApplicationView");
         }
         else {
            throw new MemberException("�Խñ� ��ü ��ȸ�� �����Ͽ����ϴ�.");
         }
         
		return mv;
	}
	
	// 신청서 작성
	@RequestMapping("userBsApply.do")
	public void userBsApply(BSApply b) {
		System.out.println("신청서 작성 잘들어왔니?");
		System.out.println(b);
	}
}
