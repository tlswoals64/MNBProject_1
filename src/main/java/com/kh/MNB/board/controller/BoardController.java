package com.kh.MNB.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.service.BoardService;

import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.vo.Member;


@Controller
public class BoardController {
	@Autowired
	BoardService bService;
	
	
	@RequestMapping("nBoard.do")
	public String nBoard() {
		return "board/community/nanumView";
	}
	
	@RequestMapping("inBoard.do")
	public String inBoard() {
		return "board/community/nanumInsertView";
	}
	
	@RequestMapping("dBoard.do")
	public String dBoard() {
		return "board/community/nanumDetailView";
	}
	
	@RequestMapping("cIntro.do")
	public String cBoard() {
		return "board/community/communityIntro";
	}
	
	@RequestMapping("bNanumlist.do")
	public ModelAndView boardNanumList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {

		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = bService.getListNanumCount(); // �쟾泥� �럹�씠吏� �닔
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // �럹�씠吏��뿉���븳 �젙蹂�
		
		ArrayList<Board> list = bService.selectNanumList(pi);
		
		System.out.println("bNanumlist.do list : " + list); 
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("board/community/nanumView");
		}
		else {
			throw new BoardException("게시글 조회에 실패하였습니다.");
		}
		return mv;
	}
	

	@RequestMapping("insertNanumBoard.do")
	public String insertNanumBoard(@ModelAttribute Board b, @RequestParam("category") String category,
													   @RequestParam("thumbnailImg1") MultipartFile titleImg,
													   @RequestParam(value="thumbnailImg2", required=false) MultipartFile contentImg1,
														@RequestParam(value="thumbnailImg3", required=false) MultipartFile contentImg2,
														@RequestParam(value="thumbnailImg4", required=false) MultipartFile contentImg3, HttpServletRequest request) {
		
//		Member member = (Member)request.getSession().getAttribute("loginUser");
//		String userId = member.getUserId();
//		Board board = new Board(b.getbNo(), 2, b.getbTitle(), b.getbWriter(), b.getbContent(), 0, null, null, null);
		
		
		Board board = new Board(b.getbNo(), 2, b.getbTitle(), "tlswoals", b.getbContent(), 0, null, null, null);
		Attachment a;
		
		ArrayList<MultipartFile> list = new ArrayList<MultipartFile>();
		list.add(titleImg);
		list.add(contentImg1);
		list.add(contentImg2);
		list.add(contentImg3);
		
		
		ArrayList<String> renameList = saveNanumFile(list, request);
		
		ArrayList<Attachment> aList = new ArrayList<Attachment>();
		
		
		if(renameList != null) {
			
			for(int i = 0; i < renameList.size(); i++) {
				a =  new Attachment();
				a.setOriginName(list.get(i).getOriginalFilename());
				a.setChangeName(renameList.get(i));
				
				if(i == 0) a.setiType(0);
				else 	   a.setiType(1);
				
				aList.add(a);
			}
		}
		
		int result1 = bService.insertNanumBoard(board);
		int result2 = bService.insertNanumAttachment(aList);
		
		int result = result1 + result2;
		
		if(result == 2) {
			return "redirect:bNanumlist.do";
		}
		else {
			throw new BoardException("寃뚯떆湲� �벑濡앹뿉 �떎�뙣�븯���뒿�땲�떎.");
		}
	}
	
	public ArrayList<String> saveNanumFile(ArrayList<MultipartFile> list, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\board";
		
		File folder = new File(savePath);
		if(!folder.exists()) { // �뤃�뜑媛� �뾾�쑝硫� �뤃�뜑瑜� 留뚮뱾�뼱以�
			folder.mkdirs();
		}
			
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		
		ArrayList<String> renameList = new ArrayList<String>();
		
		for(int i = 0; i < list.size(); i++) {
			
			String originalFileName = list.get(i).getOriginalFilename();
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) +"." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
			String renamePath = folder + "\\" + renameFileName;
			
			try {
				list.get(i).transferTo(new File(renamePath));
				
				renameList.add(renameFileName);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		return renameList;
	}
	@RequestMapping("addNanumReply.do")
	@ResponseBody	
	public String addNanumReply(Reply r, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		String rWriter = loginUser.getUserId();
		
		r.setrWriter(rWriter);
		
		int result = bService.insertNanumReply(r);
		
		if(result > 0) {
			return "success";
		}
		else {
			throw new BoardException("댓글 작성에 실패하였습니다.");
		}

	}


}
