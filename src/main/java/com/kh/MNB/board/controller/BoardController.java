package com.kh.MNB.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.service.BoardService;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;

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
	public String cIntro() {
		return "board/community/communityIntro";
	}
	
	// 정보공유게시판 리스트불러오기
	@RequestMapping("cListView.do")
	public ModelAndView cListView(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = bService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Board> list = bService.selectList(pi);
		System.out.println(list);
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("board/community/comunityListView");
		} else {
			throw new BoardException("게시판불러오기에 실패하였습니다.");
		}
		
		return mv;

	}
	
	// 정보공유게시판 상세보기 페이지
	@RequestMapping("bdetail.do")
	public ModelAndView bDetailView(@RequestParam("bNo") int bNo, @RequestParam("page") int page, ModelAndView mv ) {
		
		bService.addReadCount(bNo);
		Board board = bService.selectBoard(bNo);
		
		if(board != null) {
			mv.addObject("board", board)
			.addObject("page", page)
			.setViewName("board/community/comunityDetailView");
		} else {
			throw new BoardException("게시글 상세보기에 실패하였습니다.");
		}
		
		return mv;
	}
	
	//정보공유게시판 insert 페이지
	@RequestMapping("binsertView.do")
	public String boardInsertView() {
		return "board/community/comunityInsertView";
	}
	
	@RequestMapping("binsert.do")
	public String boardInsert(@ModelAttribute Board b, @RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile, HttpServletRequest request) {
		System.out.println(b);
		System.out.println(uploadFile);
		System.out.println(uploadFile.getOriginalFilename());
		// 파일을 넣지 않은 경우 파일 이름은 ""으로 들어감
		
//		if(!uploadFile.getOriginalFilename().equals("")) {
		if(uploadFile != null && !uploadFile.isEmpty())	{
			// 저장할 경로를 지정하는 saveFile()메소드 생성
			String renameFileName = saveFile(uploadFile, request);
			
			if(renameFileName != null) {
				b.setOriginalFile(uploadFile.getOriginalFilename());
				b.setRenameFile(renameFileName);
			}
		}
		
		int result = bService.insertBoard(b);
		
		if(result > 0) {
			return "redirect:blist.do";
		} else {
			throw new BoardException("게시글 등록에 실패하였습니다.");
		}
		
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath)); // 전달 받은 file이 rename명으로 저장
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return renameFileName;
	}
}
