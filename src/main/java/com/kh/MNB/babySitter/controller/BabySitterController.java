package com.kh.MNB.babySitter.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.babySitter.model.service.BabySitterService;
import com.kh.MNB.babySitter.model.vo.BabySitter;
import com.kh.MNB.babySitter.model.vo.sitterSuppot;
import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.vo.Member;

@Controller
public class BabySitterController
{
   @Autowired
   BabySitterService bsService;
   
   @RequestMapping("bIntro.do")
   public String bIntro() {
      return "board/baby/babyIntro";
   }
   // 베이비 시터 지원 리스트
   @RequestMapping("suppotList.do")
   public ModelAndView suppotList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
      
      int currentPage = 1;
      if(page != null) {
         currentPage = page;
      }
      
      int listCount = bsService.getListCount(); // 
      
      PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // 
      
      ArrayList<sitterSuppot> list = bsService.selectList(pi);
      
      System.out.println("suppotList.do list : " + list); 
      
      if(list != null) {
         mv.addObject("list", list);
         mv.addObject("pi", pi);
         mv.setViewName("board/baby/babySitter/suppotList");
      }
      else {
         throw new BoardException("게시글 조회에 실패하였습니다.");
      }
      return mv;
   }
   
   // 베이비시터 지원 글작성 페이지
   @RequestMapping("suppotInsert.do")
   public String suppotInsert() {
      return "board/baby/babySitter/suppotInsert";
   }
   @RequestMapping("babymom.do")
   public String BabyCareList() {      
      return "board/baby/babymom/babyCareList";
   }
   @RequestMapping("babymomIn.do")
   public String babyMomIn() {      
      return "board/baby/babymom/babyMomIn";
   }
   @RequestMapping("bcdetailView.do")
   public String bcDetailView() {      
      return "board/baby/babymom/bcdetailView";
   }
   
   // 베이비시터 지원 상세 페이지
	@RequestMapping("suppotDetail.do")
	public ModelAndView suppotDetail(@RequestParam("bNo") int bNo, @RequestParam("page") int page, ModelAndView mv) {
		bsService.addReadCount(bNo);
		sitterSuppot suppot = bsService.selectSuppotBoard(bNo);
		
		if(suppot != null) {
			mv.addObject("suppot", suppot)
			.addObject("page", page)
			.setViewName("board/baby/babySitter/suppotDetail");
		} else {
			throw new BoardException("게시글 상세보기에 실패하였습니다.");
		}
		
		return mv;
	}
   
	// 베이비시터 지원 글작성
	@RequestMapping("insertSuppot.do")
	public String insertSuppotBoard(@ModelAttribute sitterSuppot suppot, @RequestParam(value = "inputimg", required = false) MultipartFile titleImg,
									@RequestParam("detailAddress") String detailAddress, @RequestParam("extraAddress") String extraAddress,
									@RequestParam("time1") String time1, @RequestParam("time2") String time2, @RequestParam("active") String[] active,
									HttpServletRequest request, HttpSession session) {
		String bcactive = "";
		for(int i = 0; i < active.length; i++) {
			if(i != active.length-1) {
				bcactive = bcactive + active[i] + "/";
			} else {
				bcactive = bcactive + active[i];
			}
			System.out.println(bcactive);
		}
		
//		String time = "";
//		for(int i = Integer.parseInt(time1); i <= Integer.parseInt(time2); i++) {
//			if(i < Integer.parseInt(time2) + 1) {
//				time = time + i + "/";
//			} else {
//				time = time + i;
//			}
//			System.out.println(time);
//		}
		
		String ad = suppot.getAddress() + "/" + detailAddress + "/" + extraAddress;
		suppot.setAddress(ad);
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String rename = saveSuppotFile(titleImg, request);
		
		Attachment Attachment = new Attachment(suppot.getbNo(), suppot.getOriginName(), rename, null);
		Board board = new Board(suppot.getbNo(), 4, suppot.getbTitle(), loginUser.getNickName(), suppot.getbContent(), 0, null, null, null);
		BabySitter sitter = new BabySitter(suppot.getbCcarrer(), suppot.getSalary(), suppot.getTime(), bcactive, suppot.getbNo(), suppot.getAddress());
		
		if(rename != null) {
			Attachment.setOriginName(titleImg.getOriginalFilename());
			Attachment.setChangeName(rename);
			Attachment.setiType(0);
		}
		
		int result1 = bsService.insertSuppotBoard(board);
		int result2 = bsService.insertSuppotAttachment(Attachment);
		int result3 = bsService.insertSuppot(sitter);
		
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);
		
		int result = result1 + result2 + result3;
		
		if(result == 3) {
			return "redirect:suppotList.do";
		} else {
			throw new BoardException("글 작성에 실패하였습니다.");
		}
	}
	
	// 베이비시터 글작성 시 파일 이름 변환
	public String saveSuppotFile(MultipartFile img, HttpServletRequest request) { // 파일 이름 변경
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\babySitter\\suppot";
		
		File folder = new File(savePath);
		if(!folder.exists()) { // 파일 존재 유무 확인
			folder.mkdirs(); // 파일이 경로에 없을 시 생성
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

		String originalFileName = img.getOriginalFilename();
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) +"." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
		String renamePath = folder + "\\" + renameFileName;

		try {
			img.transferTo(new File(renamePath));

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return renameFileName;
	}
	
	@RequestMapping("suppotUpdateForm.do")
	public ModelAndView suppotUpdateForm(@RequestParam("bNo") int bNo, @RequestParam("page") int page, ModelAndView mv) {
		sitterSuppot suppot = bsService.selectSuppotBoard(bNo);
		
		if(suppot != null) {
			mv.addObject("suppot", suppot)
			.addObject("page", page)
			.setViewName("board/baby/babySitter/suppotUpdate");
		} else {
			throw new BoardException("게시글 수정 페이지 이동에 실패하였습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("suppotUpdate.do")
	public ModelAndView suppotUpdate(ModelAndView mv, @ModelAttribute sitterSuppot b, @RequestParam("page") int page, @RequestParam(value = "inputimg", required = false) MultipartFile titleImg, @RequestParam("detailAddress") String detailAddress, @RequestParam("extraAddress") String extraAddress, HttpServletRequest request, HttpSession session) {
		if(titleImg != null && !titleImg.isEmpty()) { // 등록되있는 파일이 있을 경우
			if(b.getChangeName() != null) {
				deleteSuppotFile(b.getChangeName(), request);
			}
			
			String renameFileName = saveSuppotFile(titleImg, request);
			
			if(renameFileName != null) {
				b.setOriginName(titleImg.getOriginalFilename());
				b.setChangeName(renameFileName);
			}
		}
		Member loginUser = (Member)session.getAttribute("loginUser");
		String ad = b.getAddress() + "/" + detailAddress + "/" + extraAddress;
		b.setAddress(ad);
		
		Attachment Attachment = new Attachment(b.getbNo(), b.getOriginName(), b.getChangeName(), b.getUpload_Date());
		Board board = new Board(b.getbNo(), 4, b.getbTitle(), loginUser.getNickName(), b.getbContent(), b.getbCount(), b.getB_CreateDate(), b.getB_ModifyDate(), b.getStatus());
		BabySitter suppot = new BabySitter(b.getbCcarrer(), b.getSalary(), b.getTime(), b.getBcActivity(), b.getbNo(), b.getAddress());
		
		int result1 = bsService.updateSuppotBoard(board);
		int result2 = bsService.updateAttachment(Attachment);
		int result3 = bsService.updateSuppot(suppot);
		
		int result = result1 + result2 + result3;
		
		if(result > 0) {
			mv.addObject("page", page)
			  .setViewName("redirect:suppotDetail.do?bNo=" + b.getbNo());
		} else {
			throw new BoardException("게시글 수정에 실패하였습니다.");
		}
		
		return mv;
	}
	
	public void deleteSuppotFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\babySitter\\suppot";
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) {
			f.delete();
		}
	}
	
	@RequestMapping("rList.do")
	public void getReplyList(HttpServletResponse response, int bNo) throws Exception {
		ArrayList<Reply> rlist = bsService.selectReplyList(bNo);
		
		for(Reply r : rlist) {
			r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
		}
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rlist, response.getWriter());
	}
	
	@RequestMapping("addReply.do")
	public String insertReply(@ModelAttribute Reply r, HttpSession session) throws IOException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		r.setrWriter(loginUser.getNickName());
		System.out.println(r);
		
		int result = bsService.insertReply(r);
		
		if(result > 0) {
			 return "redirect:rList.do?bNo=" + r.getbNo();
		} else {
			throw new BoardException("댓글 등록에 실패하였습니다.");
		}
	}
}
