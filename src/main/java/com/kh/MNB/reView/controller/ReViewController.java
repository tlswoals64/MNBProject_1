package com.kh.MNB.reView.controller;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.babySitter.model.vo.BabySitter;
import com.kh.MNB.babySitter.model.vo.sitterSuppot;
import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.exception.MemberException;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.reView.model.exception.ReViewException;
import com.kh.MNB.reView.model.service.ReViewService;
import com.kh.MNB.reView.model.vo.ReVi;
import com.kh.MNB.reView.model.vo.ReView;

@Controller
public class ReViewController {
	 @Autowired
	   ReViewService rvService;
	   
	 @RequestMapping("reViewList.do")
	 public ModelAndView reViewList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		 
			   int currentPage = 1;
			   if(page !=null) {
				   currentPage= page;		   
			   }
			   int listCount= rvService.getRvListCount();
			   PageInfo pi= Pagination.getPageInfo(currentPage, listCount);
			   ArrayList<ReVi> rvlist = rvService.selectRvlist(pi);
			   
			   if(rvlist !=null) {
				   mv.addObject("rvlist", rvlist);				   
				   mv.addObject("pi", pi);
				   mv.setViewName("board/review/reviewList");
			   }else {
				   throw new ReViewException("게시글 리스트 조회에 실패하였습니다.");
			   }
		      return mv;
		   }

	 
	
	 
	 @RequestMapping("reViewDeView.do")
	 public String reViewDeView() {
		 
		 return "board/review/reviewDetail";
	 }
	 
	 @RequestMapping("detailReview.do")
	 public ModelAndView detailReview(@RequestParam("bNo") int bNo, @RequestParam("page") int page, ModelAndView mv) {
	 	rvService.addReviewCount(bNo);
	 	
 		
 		ReVi revi= rvService.selectReViewDetail(bNo);
 		
 		if(revi!=null) {
 			mv.addObject("revi", revi)
 			.addObject("page", page)
			.setViewName("board/review/reviewDetail");
 		}else {
 			throw new ReViewException("게시글 조회에 실패하였습니다."); 
 		}
 		return mv;

 } 
	 
	 
	 @RequestMapping("reViewInView.do")
	 public String reViewInView() {
		 
		 return "board/review/reviewInsert";
	 }
	 
	 @RequestMapping("reviewInsert.do")
	 public String insertReView(@ModelAttribute Board board, @ModelAttribute Attachment attachment,
			 					@RequestParam("uploadFile") MultipartFile contentImg,
			 					@RequestParam("bEva") int bEva,HttpSession session,
			 					HttpServletRequest request) {
		 
		 Member loginUser = (Member)session.getAttribute("loginUser");
		 Board b = new Board(board.getbNo(), 8, board.getbTitle(), loginUser.getUserId(), board.getbContent(), 0, null, null, null);
		 Attachment Attachment = new Attachment(attachment.getbNo(), attachment.getOriginName(), attachment.getChangeName(), null);
		 ReView review= new ReView(board.getbNo(), bEva);
		 
		 String renameFileName = saveFile(contentImg, request);
			if(renameFileName != null) {
				Attachment.setOriginName(contentImg.getOriginalFilename());
				Attachment.setChangeName(renameFileName);
			}		 
		 
			int result=0;
			int result1 = rvService.insertReview(b);		
			int result2 = rvService.insertReviewAt(Attachment);
			int result3 = rvService.insertReviewRV(review);
			result= result1+result2+result3;
			if(result>2) {  
		   return "redirect:reViewList.do";
			}else {
				throw new ReViewException("게시글 작성에 실패하였습니다.");
			}	   
			 
	 }
	 public String saveFile(MultipartFile file, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\images\\reView";
			
			File folder = new File(savePath);
			if(!folder.exists()) {
				folder.mkdirs();
			}
			
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String originalFilename = file.getOriginalFilename();
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))+"." + originalFilename.substring(originalFilename.lastIndexOf(".")+1);
			
			String renamePath = folder + "\\" + renameFileName;
			
			try{
			file.transferTo(new File(renamePath)); //전달받은 file이 rename명으로 저장
			}catch(IllegalStateException e) {
				e.printStackTrace();
			}catch(IOException e){
				e.printStackTrace();			
			}
			return renameFileName;
		
		}
	 
	 public void deleteFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\images\\reView";
			
			File f = new File(savePath + "\\" + fileName);
			
			if(f.exists()) {
				f.delete();
			}
		}
			 
	 
	 
	 @RequestMapping("reviewUpdateView.do")
	 public ModelAndView reViewUpView(@RequestParam("bNo") int bNo, @RequestParam("page") int page, ModelAndView mv) {
		 
		 	System.out.println(bNo);
	 		
	 		ReVi revi= rvService.selectReViewUpdate(bNo);
	 		
	 		if(revi!=null) {
	 			mv.addObject("revi", revi)	 
	 			.addObject("page", page)
 			.setViewName("board/review/reviewUpdate");
	 		}else {
	 			throw new ReViewException("게시글 조회에 실패하였습니다."); 
	 		}
	 		return mv;
	
	 }
	 @RequestMapping("reviewUpdate.do")
	 public ModelAndView reViewUpdate(ModelAndView mv, @ModelAttribute ReVi revi, @RequestParam("page") int page,
			 @RequestParam(value = "inputimg", required = false) MultipartFile titleImg,
			 HttpServletRequest request, HttpSession session)  {
		 if(titleImg != null && !titleImg.isEmpty()) { // 등록되있는 파일이 있을 경우
				if(revi.getChangeName() != null) {
					deleteFile(revi.getChangeName(), request);
				}
				
				String renameFileName = saveFile(titleImg, request);
				
				if(renameFileName != null) {
					revi.setOriginName(titleImg.getOriginalFilename());
					revi.setChangeName(renameFileName);
				}
			}
		 Member loginUser = (Member)session.getAttribute("loginUser");			
			
			Attachment Attachment = new Attachment(revi.getbNo(), revi.getOriginName(), revi.getChangeName(), revi.getUpload_Date());
			Board board = new Board(revi.getbNo(), 8, revi.getbTitle(), loginUser.getNickName(), revi.getbContent(), revi.getbCount(), revi.getB_CreateDate(), revi.getB_ModifyDate(), revi.getStatus());

			int result1 = rvService.updateRvBoard(board);
			int result2 = rvService.updateRvAttachment(Attachment);
			int result3 = rvService.updateReView(revi);
			
			int result = result1 + result2 + result3;
			
			if(result > 0) {
				mv.addObject("page", page)
				  .setViewName("redirect:detailReview.do?bNo=" + revi.getbNo());
			} else {
				throw new ReViewException("게시글 수정에 실패하였습니다."); 
			}

		 return mv;
		 
		 
		 
	 }
	 @RequestMapping("reviewDelete.do")
	 public String reViewDelete(@RequestParam("bNo") int bNo) {
		 
		 int result = rvService.deleteReView(bNo);	 	
		 int result1 = rvService.deleteImgReView(bNo); 
		 result = result + result1;
		 if(result>1) {
		 return "redirect:reViewList.do";
		 }
		 else {
			 
			 throw new ReViewException("게시글 삭제에 실패하였습니다."); 
		 }		 
	 }
	 


}
