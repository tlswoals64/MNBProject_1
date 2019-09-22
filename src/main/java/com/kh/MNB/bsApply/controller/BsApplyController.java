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
	
	// 시터페이지로 이동
	@RequestMapping("sitterApplyPage.do")
	public ModelAndView sitterApply(HttpSession session, ModelAndView mv) {
		Member m = (Member)session.getAttribute("loginUser");
		
		int result = bsaService.checkBsa(m);
		if(result > 0) {
            mv.addObject("check", "0");
            mv.addObject("m", m);
            mv.setViewName("common/SitterApplicationView");
         }
         else {
        	 mv.addObject("check", "1");
        	 mv.addObject("m", m);
             mv.setViewName("common/SitterApplicationView");
         }
         
		return mv;
	}
	
	// 신청서 작성
	@RequestMapping("userBsApply.do")
	public String userBsApply(BSApply b, 
				@RequestParam("exT1") String exT1, @RequestParam("exP1") String exP1, @RequestParam("exC1") String exC1,
				@RequestParam("exT2") String exT2, @RequestParam("exP2") String exP2, @RequestParam("exC2") String exC2,
				@RequestParam("exT3") String exT3, @RequestParam("exP3") String exP3, @RequestParam("exC3") String exC3) {
		String caring ="";
		if(exT1 != "") {
			caring += (exT1 + "@!" + exP1 +"@!" + exC1);
		}
		if(exT2 != "") {
			caring += ("/" + exT2 + "@!" + exP2 +"@!" + exC2);
		}
		if(exT3 != "") {
			caring += ("/" + exT3 + "@!" + exP3 +"@!" + exC3);
		}
		if(exT1 != "") {
			b.setCaring(caring);
		}
		
		int result = bsaService.memberBsapply(b);
		if(result > 0) {
            return "redirect:index.jsp";
         }
         else {
            throw new BsApplyException("신청서작성에 실패했습니다.");
         }
         
		
	}
	
	@RequestMapping("bsaUpdateView.do")
	public ModelAndView bsaUpdate(HttpSession session, ModelAndView mv) {
		Member m = (Member)session.getAttribute("loginUser");
		System.out.println("수정들어옴?");
		System.out.println(m.getUserId());

		BSApply b = bsaService.bsaUpdateB(m);
		System.out.println("bsa : " + b);
		if(b != null) {
            mv.addObject("m", m);
            mv.addObject("b", b);
            mv.setViewName("common/SitterApplicationUpdateView");
         }
         else {
        	 throw new BsApplyException("신청서수정에 실패했습니다.");
         }
         
		return mv;
	}
	
	@RequestMapping("userBsApplyUpdate.do")
	public String userBsApplyUpdate(BSApply b, 
			@RequestParam("exT1") String exT1, @RequestParam("exP1") String exP1, @RequestParam("exC1") String exC1,
			@RequestParam("exT2") String exT2, @RequestParam("exP2") String exP2, @RequestParam("exC2") String exC2,
			@RequestParam("exT3") String exT3, @RequestParam("exP3") String exP3, @RequestParam("exC3") String exC3) {
	String caring ="";
	if(exT1 != "") {
		caring += (exT1 + "@!" + exP1 +"@!" + exC1);
	}
	if(exT2 != "") {
		caring += ("/" + exT2 + "@!" + exP2 +"@!" + exC2);
	}
	if(exT3 != "") {
		caring += ("/" + exT3 + "@!" + exP3 +"@!" + exC3);
	}
	if(exT1 != "") {
		b.setCaring(caring);
	}
	System.out.println("제발요  : " + b);
	
	int result = bsaService.userBsApplyUpdate(b);
	if(result > 0) {
        return "redirect:index.jsp";
     }
     else {
        throw new BsApplyException("신청서작성에 실패했습니다.");
     }
     
	
}
	
}
