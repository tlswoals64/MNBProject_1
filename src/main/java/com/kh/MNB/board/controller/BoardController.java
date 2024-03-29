package com.kh.MNB.board.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.service.BoardService;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.board.model.vo.PictureBoard;
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.common.PaginationNanum;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.propose.model.vo.Propose;
import com.kh.MNB.report.model.vo.Report;

@Controller
public class BoardController {

	 @Autowired
	   BoardService bService;
	   
	   
	   @RequestMapping("nBoard.do")
	   public ModelAndView boardNList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
	      
	      int currentPage = 1;
	      if(page != null) {
	         currentPage = page;
	      }
	      
	      int listCount = bService.getListNanumCount(); // �쟾泥� �럹�씠吏� �닔
	      
	      PageInfo pi = PaginationNanum.getPageInfo(currentPage, listCount); // �럹�씠吏��뿉���븳 �젙蹂�
	      
	      ArrayList<Board> list = bService.selectNanumList(pi);
	      
	      if(list != null) {
	         mv.addObject("list", list);
	         mv.addObject("pi", pi);
	         mv.setViewName("board/community/nanumView");
	      }
	      else {
	         throw new BoardException("寃뚯떆湲� �쟾泥� 議고쉶�뿉 �떎�뙣�븯���뒿�땲�떎.");
	      }
	      
	      return mv;
	   }
	   
	   @RequestMapping("inBoard.do")
	   public String inBoard() {
	      return "board/community/nanumInsertView";
	   }
	   
	   @RequestMapping("dBoard.do")
	   public ModelAndView dNBoard(@RequestParam("bNo") int bNo, 
	         /* @RequestParam("page") int page, */
	         ModelAndView mv) {
	      ArrayList<PictureBoard> board = bService.selectNanumBoard(bNo);
	         
	         bService.addReadCount1(bNo);
	      
	      
	      if(board != null) {
	         mv.addObject("board", board)/* .addObject("page", page) */.setViewName("board/community/nanumDetailView");
	      }
	      else {
	         throw new BoardException("게시물 상세보기에 실패하였습니다 .");
	      }
	      
	      return mv;
	   }
	   
	   @RequestMapping("cIntro.do")
	   public ModelAndView cBoard(ModelAndView mv) {
	      ArrayList<Board> board = bService.selectNanumIntro();
	      ArrayList<Board> comboard = bService.selectComIntro();
	      
	      if(board != null) {
	         mv.addObject("comboard", comboard);
	         mv.addObject("nanumboard", board).setViewName("board/community/communityIntro");
	      }
	      return mv;
	   }
	   
	   
	   
	   @RequestMapping("bNanumlist.do")
	   public ModelAndView boardNanumList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {

	      
	      int currentPage = 1;
	      if(page != null) {
	         currentPage = page;
	      }
	      
	      int listCount = bService.getListNanumCount(); // �쟾泥� �럹�씠吏� �닔
	      
	      PageInfo pi = PaginationNanum.getPageInfo(currentPage, listCount); // �럹�씠吏��뿉���븳 �젙蹂�
	      
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
	   public String insertNanumBoard(@ModelAttribute Board b,
	                                          @RequestParam("thumbnailImg1") MultipartFile titleImg,
	                                          @RequestParam(value="thumbnailImg2", required=false) MultipartFile contentImg1,
	                                          @RequestParam(value="thumbnailImg3", required=false) MultipartFile contentImg2,
	                                          @RequestParam(value="thumbnailImg4", required=false) MultipartFile contentImg3, HttpServletRequest request) {
	      
	      Member member = (Member)request.getSession().getAttribute("loginUser");
//	      String userId = member.getUserId();
//	      Board board = new Board(b.getbNo(), 2, b.getbTitle(), b.getbWriter(), b.getbContent(), 0, null, null, null);
	      
	      Board board = new Board(b.getbNo(), 2, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
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
	            else       a.setiType(1);
	            
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
	         throw new BoardException("게시물 등록에 실패하였습니다.");
	      }
	         
	   }
	         
	   @RequestMapping("nanumUpdateView.do")
	   public ModelAndView boardUpdateView(@RequestParam("bNo")  int bNo, 
	                           ModelAndView mv) {
	      ArrayList<PictureBoard> board = bService.selectNanumBoard(bNo);
	      mv.addObject("board", board).setViewName("board/community/nanumUpdateView");      
	      return mv;
	   }
	   
	   
	   @RequestMapping("updateNanumBoard.do")
	   public String updateNanumBoard( @ModelAttribute Board b,   
	                           @RequestParam(value="thumbnailImg1", required = false) MultipartFile titleImg,
	                           @RequestParam(value="thumbnailImg2", required = false) MultipartFile contentImg1,
	                           @RequestParam(value="thumbnailImg3", required = false) MultipartFile contentImg2,
	                           @RequestParam(value="thumbnailImg4", required = false) MultipartFile contentImg3, 
	                           @RequestParam(value="iNo0", required = false) String iNo0, 
	                           @RequestParam(value="iNo1", required = false) String iNo1, 
	                           @RequestParam(value="iNo2", required = false) String iNo2, 
	                           @RequestParam(value="iNo3", required = false) String iNo3, 
	                           HttpServletRequest request) {
	      
	      
	      /**
	          update
	             iNo가 null이 아니면서 originName이 존재할때 수정할수있
	             iNo 앞에 N이 붙을 수 있음
	          insert
	             iNo가 null이면서 originName이 존재할때 추가할수 있
	          delete
	             iNo가 null이 아니면서 originName이 공백([]) 일때 삭제할수 있 
	          그대로(손대지 않아도 되는)
	             iNo가 null이면서 originName이 공백([]) 일때 그대로 ㄱ
	       */
	      
	      Member member = (Member)request.getSession().getAttribute("loginUser");
	      Attachment a;
	      Board board = new Board(b.getbNo(), 2, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
//	      if(a.getChangeName() != null) {
//	         deleteNanumFile(a.getChangeName(), request);
//	      }
	      
//	      System.out.println("=============== 타이틀 이미지 ===============");
//	      System.out.println(iNo0);
//	      System.out.println(titleImg);
//	      System.out.println(titleImg.getOriginalFilename());
//	      System.out.println("=============== 이미지 1 ===============");
//	      System.out.println(iNo1);
//	      System.out.println(contentImg1);
//	      System.out.println(contentImg1.getOriginalFilename());
//	      System.out.println("=============== 이미지 2 ===============");
//	      System.out.println(iNo2);
//	      System.out.println(contentImg2);
//	      System.out.println(contentImg2.getOriginalFilename());
//	      System.out.println("=============== 이미지 3 ===============");
//	      System.out.println(iNo3);
//	      System.out.println(contentImg3);
//	      System.out.println(contentImg3.getOriginalFilename());
	      
	      ArrayList<MultipartFile> multipartList = new ArrayList<MultipartFile>();
	      multipartList.add(titleImg);
	      multipartList.add(contentImg1);
	      multipartList.add(contentImg2);
	      multipartList.add(contentImg3);
	      
	      ArrayList<String> originNameList = new ArrayList<String>();
	      originNameList.add(titleImg.getOriginalFilename());
	      originNameList.add(contentImg1.getOriginalFilename());
	      originNameList.add(contentImg2.getOriginalFilename());
	      originNameList.add(contentImg3.getOriginalFilename());
	      
	      ArrayList<String> iNoString = new ArrayList<String>();
	      iNoString.add(iNo0);
	      iNoString.add(iNo1);
	      iNoString.add(iNo2);
	      iNoString.add(iNo3);
	      
	      // update, insert, delete할 부분을 담은 ArrayList
	      ArrayList<Attachment> updateList = new ArrayList<Attachment>();
	      ArrayList<Attachment> insertList = new ArrayList<Attachment>();
	      ArrayList<Integer> deleteList = new ArrayList<Integer>();
	      
	      for(int i = 0; i < iNoString.size(); i++) {
	         a = new Attachment();
	         a.setbNo(b.getbNo());
	         
	         if(iNoString.get(i) != null && !originNameList.get(i).equals("")) { // update
	            if(iNoString.get(i).charAt(0) == 'N') a.setiNo(Integer.parseInt(iNoString.get(i).substring(1)));
	            else a.setiNo(Integer.parseInt(iNoString.get(i)));
	            
	            a.setOriginName(originNameList.get(i));
	            
	            if(i == 0) a.setiType(0);
	            else      a.setiType(1);
	            
	            updateList.add(a);
	         }
	         
	         if(iNoString.get(i) == null && !originNameList.get(i).equals("")) { // insert
	            a.setOriginName(originNameList.get(i));
	            a.setiType(1);
	            
	            insertList.add(a);
	         }
	         
	         if(iNoString.get(i) != null && originNameList.get(i).equals("")) { // delete
	            deleteList.add(Integer.parseInt(iNoString.get(i).substring(1)));
	         }
	      }
	      
	      
	      ArrayList<String> renameList = updateSaveFile(multipartList, request);
	      for(int i = 0; i < updateList.size(); i++) {
	         updateList.get(i).setChangeName(renameList.get(i));
	      }
	      for(int i = updateList.size()-1; i >= 0 ; i--) {
	         renameList.remove(i);
	      }
	      for(int i = 0; i < insertList.size(); i++) {
	         insertList.get(i).setChangeName(renameList.get(i));
	      }
	      
	      System.out.println("updateList : " + updateList);
	      System.out.println("insertList : " + insertList);
	            
	      int result1 = bService.updateNanumBoard(board);
	      int result2 = 0;
	      int result3 = 0;
	      int result4 = 0;      
	      
	      if(!updateList.isEmpty()) result2 = bService.updateNanumAttachment(updateList);
	      if(!insertList.isEmpty()) result3 = bService.insertSubNanumAttachment(insertList);
	      if(!deleteList.isEmpty()) result4 = bService.deleteSubNanumAttachment(deleteList);
	      
	      int result = result1 + result2 + result3 + result4;

	      if(result >= 2) {
	         return "redirect:bNanumlist.do";
	      }   
	      else {
	         throw new BoardException("게시물 수정에 실패하였습니다.");
	      }   
	      
	   }     
	   
	   public ArrayList<String> updateSaveFile(ArrayList<MultipartFile> list, HttpServletRequest request){
	      
	      String root = request.getSession().getServletContext().getRealPath("resources");
	      String savePath = root + "\\images\\board";
	      
	      File folder = new File(savePath);
	      if(!folder.exists()) {
	         folder.mkdirs();
	      }
	      
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	      
	      ArrayList<String> renameList = new ArrayList<String>();
	      
	      for(int i = 0; i < list.size(); i++) {
	         
	            String originalFileName = list.get(i).getOriginalFilename();
	            String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) +"." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
	            
	            String renamePath = folder + "\\" + renameFileName;
	            
	            if(renameFileName.lastIndexOf(".") != renameFileName.length() - 1) {
	               try {
	                  list.get(i).transferTo(new File(renamePath));
	                  
	                  renameList.add(renameFileName);
	               } catch (IllegalStateException e) {
	                  e.printStackTrace();
	               } catch (IOException e) {
	                  e.printStackTrace();
	               }
	            }
	            
	      }
	      return renameList;
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
	         
	         String isExist = list.get(i).getOriginalFilename();
	         
	         if(!isExist.equals("")) {
	            String originalFileName = isExist;
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
	      }
	      
	      return renameList;
	   }
	   
	   public void deleteNanumFile(String fileName, HttpServletRequest request) {
	      String root = request.getSession().getServletContext().getRealPath("resources");
	      String savePath = root + "\\images\\board";
	      
	      File folder = new File(savePath + "\\" + fileName);
	      
	      if(folder.exists()) {
	         folder.delete();
	      }
	   }
	   
	   @RequestMapping("rNanumList.do")
	   public void getNanumReplyList(HttpServletResponse response, int bNo) throws IOException {
	      ArrayList<Reply> rList = bService.selectNanumReplyList(bNo);
	      
	      for(Reply r : rList) {
	         r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
	      }
	      
	      Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	      gson.toJson(rList, response.getWriter());
	   }
	   
	   
	   
	   @RequestMapping("addNanumReply.do")
	   @ResponseBody   
	   public String addNanumReply(Reply r, HttpSession session) {
	      Member loginUser = (Member)session.getAttribute("loginUser");
	      String rWriter = loginUser.getUserId();
	      
	      r.setrWriter(rWriter);
	      
	      System.out.println(r);
	      
	      int result = bService.insertNanumReply(r);
	      
	      if(result > 0) {
	         return "success";
	      }
	      else {
	         throw new BoardException("댓글 작성에 실패하였습니다.");
	      }

	   }
	   
	   @RequestMapping("deleteNanumBoard.do")
	   public ModelAndView deleteBoard(@RequestParam("bNo") int bNo, 
	                        @RequestParam(value="page", required=false) Integer page, 
	                        ModelAndView mv) {

	      int result = bService.deleteNanumBoard(bNo);
	      if(result > 0) {
	         boardNanumList(page, mv);
	      }
	      else {
	         throw new BoardException("게시물 삭제에 실패하였습니다.");
	      }
	      
	      
	      return mv;
	   }
	  
	   
	   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	   // 매니저 신고 top 5
	   @RequestMapping("mDectopList.do")
		public void mDectopList(HttpServletResponse response) throws IOException {

			ArrayList<Board> list = bService.mDectopList();
			System.out.println(list);
			for(Board b : list) {
				b.setbTitle(URLEncoder.encode(b.getbTitle(), "utf-8"));
			}
			
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson(list, response.getWriter());

		}
	   
	// 매니저 Qna top 5
	   @RequestMapping("mQnatopList.do")
		public void mQnatopList(HttpServletResponse response) throws IOException {

			ArrayList<Board> list = bService.mQnatopList();
			System.out.println(list);
			for(Board b : list) {
				b.setbTitle(URLEncoder.encode(b.getbTitle(), "utf-8"));
			}
			
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson(list, response.getWriter());

		}
	   
	   // 관리자 공지사항 리스트
		@RequestMapping("mNoticeList.do")
		public ModelAndView qnaList(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
			int currentPage = 1;
			if (page != null) {
				currentPage = page;
			}

			int listCount = bService.getManaListCount(); 

			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			ArrayList<Board> list = bService.selectNoticeList(pi);


			if (list != null) {
				mv.addObject("list", list);
				mv.addObject("pi", pi);
				mv.setViewName("manager/manaNoticeListView");
			} else {
				throw new BoardException("공지사항 리스트 불러오기에 실패했습니다.");
			}

			return mv;
		}
		
		@RequestMapping("mNoticeDetail.do")
		public ModelAndView mNoticeDetail(ModelAndView mv, HttpServletRequest request) {
			int bNo = Integer.parseInt(request.getParameter("bNo"));
			Board b = bService.mNoticeDetail(bNo);
			System.out.println("notice : " + b);
			if(b != null) {
				mv.addObject("b", b);
				mv.setViewName("manager/manaNoticeDetailView");
			}
			else {
				throw new BoardException("공지사항 상세보기에 실패했습니다.");
			}
			return mv;
		}
		
		@RequestMapping("mNoticeUpdateView.do")
		public ModelAndView mNoticeUpdateView(ModelAndView mv, Board b) {
			mv.addObject("b", b);
			System.out.println("noticUpdate : " + b);
			mv.setViewName("manager/manaNoticeUpdateView");
			return mv;
		}
		
		@RequestMapping("mNoticeUpdate.do")
		public String mNoticeUpdate(Board b) {
			int result = bService.mNoticeUpdate(b);
			return "redirect:mNoticeDetail.do?bNo=" + b.getbNo();
		}
		
		@RequestMapping("mNoticeInsertView.do")
		public String mNoticeInsertView(){
			return "manager/manaNoticeInsertView";
		}
		
		@RequestMapping("mNoticeInsert.do")
		public String mNoticeInsert(HttpServletRequest request, Board b) {
			System.out.println("insert : " + b);
			int result = bService.mNoticeInsert(b);
			return "redirect:mNoticeList.do";
		}
		
		 @RequestMapping("mNoticedelete.do")
		 public String mNoticedelete(HttpServletRequest request) {
			 int bNo = Integer.parseInt(request.getParameter("bNo"));
			 int result = bService.mNoticedelete(bNo);
			 return "redirect:mNoticeList.do";
		 }
		 
		 
		 // 커뮤니티 메인페이지 top5
		 @RequestMapping("comTopList.do")
		 public void comTopList(HttpServletResponse response) throws IOException {

				ArrayList<Board> list = bService.comTopList();
				System.out.println(list);
				for(Board b : list) {
					b.setbTitle(URLEncoder.encode(b.getbTitle(), "utf-8"));
					b.setbWriter(URLEncoder.encode(b.getbWriter(), "utf-8"));
				}
				
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(list, response.getWriter());

			}
		 @RequestMapping("nanumTopList.do")
		 public void nanumTopList(HttpServletResponse response) throws IOException {

				ArrayList<Board> list = bService.nanumTopList();
				System.out.println(list);
				for(Board b : list) {
					b.setbTitle(URLEncoder.encode(b.getbTitle(), "utf-8"));
					b.setbWriter(URLEncoder.encode(b.getbWriter(), "utf-8"));
				}
				
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(list, response.getWriter());

			}

		 
		 
		 //
  
  
  
 
		// 정보공유게시판 리스트불러오기
			@RequestMapping("comListView.do")
			public ModelAndView cListView(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
				
				int currentPage = 1;
				if (page != null) {
					currentPage = page;
				}
				int listCount = bService.getListCount1();

				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

				ArrayList<Board> list = bService.selectList1(pi);

				if (list != null) {
			
					mv.addObject("list1", list)
					.addObject("pi1", pi)
					.setViewName("board/community/comunityListView");
				} else {
					throw new BoardException("게시판불러오기에 실패하였습니다.");
				}

				return mv;
			}
			
			// 공지사항 리스트불러오기
				@RequestMapping("notListView.do")
				public ModelAndView notListView(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
					
					int currentPage = 1;
					if (page != null) {
						currentPage = page;
					}
					int listCount = bService.getnotListCount();

					PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

					ArrayList<Board> list = bService.noticeList(pi);
				
					if (list != null) {
				
						mv.addObject("list1", list)
						.addObject("pi1", pi)
						.setViewName("board/notice/noticeListView");
					} else {
						throw new BoardException("공지사항 불러오기에 실패하였습니다.");
					}

					return mv;
				}

			
			// 정보공유게시판
			@RequestMapping("inCom.do")
			public ModelAndView inCom(HttpSession session, ModelAndView mv) {
				Member loginUser = (Member) session.getAttribute("loginUser");
				mv.addObject(loginUser);
					
				mv.setViewName("board/community/comunityInsertView");
				return mv;
			}
			
			
			//문의사항게시판 글쓰기버튼 눌렀을때
			@RequestMapping("inPro.do")
			public ModelAndView inPro(HttpSession session, ModelAndView mv) {
				Member loginUser = (Member) session.getAttribute("loginUser");
				mv.addObject(loginUser);
				mv.setViewName("board/propose/proposeInsertView");
				return mv;
			}

			// 정보공유게시판
			@RequestMapping("insertCom.do")
			public String insertCom(@ModelAttribute Board b,
					@RequestParam(value = "thumbnailImg1", required = false) MultipartFile titleImg,
					@RequestParam(value = "thumbnailImg2", required = false) MultipartFile contentImg1,
					@RequestParam(value = "thumbnailImg3", required = false) MultipartFile contentImg2,
					@RequestParam(value = "thumbnailImg4", required = false) MultipartFile contentImg3,
					HttpServletRequest request) {

				Member member = (Member)request.getSession().getAttribute("loginUser");
//				String userId = member.getUserId();
//				Board board = new Board(b.getbNo(), 2, b.getbTitle(), b.getbWriter(), b.getbContent(), 0, null, null, null);
				
				Board board = new Board(b.getbNo(), 1, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
				Attachment a;

				ArrayList<MultipartFile> list = new ArrayList<MultipartFile>();
				
				if(titleImg.getOriginalFilename() != "") {
					list.add(titleImg);
				}
				if(contentImg1.getOriginalFilename() != "") {
					list.add(contentImg1);
				}
				if(contentImg2.getOriginalFilename() != "") {
					list.add(contentImg2);
				}
				if(contentImg3.getOriginalFilename() != "") {
					list.add(contentImg3);
				}

				ArrayList<String> renameList = saveFile1(list, request);

				ArrayList<Attachment> aList = new ArrayList<Attachment>();
				System.out.println("에이리스트:"+aList);
				int result1 = bService.insertComBoard(board);
				int result2=0;
				if(aList != null) {
				if (renameList != null) {
				
					for (int i = 0; i < renameList.size(); i++) {
						a = new Attachment();
						a.setOriginName(list.get(i).getOriginalFilename());
						a.setChangeName(renameList.get(i));
						
						if (i == 0) {
							a.setiType(0);
						}
						else if(i==1)
						{
							a.setiType(1);
						}
						else if(i==2) {
							a.setiType(2);
						}
						else if(i==3)
						{
							a.setiType(3);
						}
						aList.add(a);
						
						}
					}
					result2 = bService.insertComAttachment(aList);
				}

				int result = result1 + result2;

				if (result >=1) {
					return "redirect:comListView.do";
				} else {
					throw new BoardException("野껊슣�뻻疫뀐옙 占쎈쾻嚥≪빘肉� 占쎈뼄占쎈솭占쎈릭占쏙옙占쎈뮸占쎈빍占쎈뼄.");
				}

			}
			
			// 정보공유게시판
			public ArrayList<String> saveFile1(ArrayList<MultipartFile> list1, HttpServletRequest request) {
				String root = request.getSession().getServletContext().getRealPath("resources");
				String savePath = root + "\\images\\board";

				File folder = new File(savePath);
				if (!folder.exists()) { // 占쎈쨨占쎈쐭揶쏉옙 占쎈씨占쎌몵筌롳옙 占쎈쨨占쎈쐭�몴占� 筌띾슢諭억옙堉긴빳占�
					folder.mkdirs();
				}

				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

				ArrayList<String> renameList = new ArrayList<String>();

				for (int i = 0; i < list1.size(); i++) {

					String originalFileName = list1.get(i).getOriginalFilename();
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
							+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
					String renamePath = folder + "\\" + renameFileName;

					try {
						list1.get(i).transferTo(new File(renamePath));

						renameList.add(renameFileName);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}

				}

				return renameList;
			}

			// 문의사항게시판 글쓰기(기능)
				@RequestMapping("insertPro.do")
				public String insertPro(@ModelAttribute Board b,  @ModelAttribute Propose p,
						HttpServletRequest request) {

					Member member = (Member)request.getSession().getAttribute("loginUser");


//					System.out.println("Member : " + member);
//					Board board = new Board(b.getbNo(), 5, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
					
					b.setbWriter(member.getUserId());
					

					
					int result = 0;
					int result1 = bService.insertProBoard(b);
					int result2 = bService.insertPropose(p);
					
					result = result1 + result2;
					
					if (result == 2) {
						return "redirect:proListView.do";
					} else {
						throw new BoardException("野껊슣�뻻疫뀐옙 占쎈쾻嚥≪빘肉� 占쎈뼄占쎈솭占쎈릭占쏙옙占쎈뮸占쎈빍占쎈뼄.");
					}
				}
			
			// 정보공유게시판
			@RequestMapping("addReply1.do")
			@ResponseBody
			public String addComReply(Reply r, HttpSession session) {
				Member loginUser = (Member) session.getAttribute("loginUser");
				String rWriter = loginUser.getUserId();

				r.setrWriter(rWriter);

				int result = bService.insertReply1(r);

				if (result > 0) {
					return "success";
				} else {
					throw new BoardException("�뙎湲� �옉�꽦�뿉 �떎�뙣�븯���뒿�땲�떎.");
				}

			}
				
			// 정보공유게시판 상세보기 페이지

			@RequestMapping("detailCom.do")
			public ModelAndView ComDetailView(HttpServletRequest request, ModelAndView mv) {
				Member member = (Member)request.getSession().getAttribute("loginUser");
				int bNo = Integer.parseInt(request.getParameter("bNo"));
			
				bService.addReadCount1(bNo);
				
				
				Attachment board = bService.selectBoard1(bNo);

				Attachment board2 = bService.selectPicBoard1(bNo);
			
				Attachment board3 = bService.selectPicBoard2(bNo);
				Attachment board4 = bService.selectPicBoard3(bNo);
				
				Board board123 = bService.selectBoard2(bNo);
			
				
				if (board123 != null) {
					mv.addObject("m", member);
					mv.addObject("board", board);
					mv.addObject("board2",board2);
					mv.addObject("board3",board3);
					mv.addObject("board4",board4);
				
					mv.addObject("board123", board123);
				
					mv.setViewName("board/community/comunityDetailView");
				} else {
					throw new BoardException("게시글 상세보기에 실패하였습니다.");
				}
				
				return mv;
				
			}
			
			@RequestMapping("notDetail.do")
			public ModelAndView notDetail(HttpServletRequest request, ModelAndView mv) {
				Member member = (Member)request.getSession().getAttribute("loginUser");
				int bNo = Integer.parseInt(request.getParameter("bNo"));
				
				bService.addReadCountNot(bNo);
				
				Board board123 = bService.detailNot(bNo);

				
				if (board123 != null) {
					mv.addObject("m", member);	
					mv.addObject("board123", board123);
					mv.setViewName("board/notice/noticeDetailView");
				} else {
					throw new BoardException("공지사항 상세보기에 실패하였습니다.");
				}
				
				return mv;
				
			}
			
			// 문의사항게시판 리스트 불러오기
			@RequestMapping("proListView.do")
			public ModelAndView proListView(HttpServletRequest request,@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
				Member member = (Member)request.getSession().getAttribute("loginUser");
				int currentPage = 1;
				if (page != null) {
					currentPage = page;
				}
				
				int listCount = bService.getListCountPro();

				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				ArrayList<Propose> list = bService.selectProList(pi);
				
				if (list != null) {
					mv.addObject("m",member);
					mv.addObject("list1", list);
					mv.addObject("pi1", pi);
					mv.setViewName("board/propose/proposeListView");
				} else {
					throw new BoardException("문의사항게시판불러오기에 실패하였습니다.");
				}
				return mv;
			}
			
			// 문의사항게시판 상세보기 페이지

				@RequestMapping("detailPro.do")
				public ModelAndView ProDetailView(HttpServletRequest request, ModelAndView mv) {
					Member member = (Member)request.getSession().getAttribute("loginUser");
					int bNo = Integer.parseInt(request.getParameter("pNo"));
				
					bService.addProReadCount(bNo);
					Board board = bService.selectProBoard(bNo);
					Propose propose = bService.selectPropose(bNo);
					int pty= propose.getpType();
					String ptty="";
					
					if(pty ==1) {
					 ptty = Integer.toString(pty);
						ptty="계정관련 문의";
					}else if(pty ==2) {
						ptty = Integer.toString(pty);
						ptty="사이트 이용관련 문의";
					}else if(pty==3) {
						ptty = Integer.toString(pty);
						ptty="베이비시터관련 문의";
					}else if(pty==4) {
						ptty = Integer.toString(pty);
						ptty="부모님관련 문의";
					}else if(pty==5) {
						ptty = Integer.toString(pty);
						ptty="기타 문의사항";
					}
					
					if (board != null) {
						mv.addObject("m", member);
						mv.addObject("board123", board);
						mv.addObject("propose",propose);
						mv.addObject("ptty",ptty);
						mv.setViewName("board/propose/proposeDetailView");
					} else {
						throw new BoardException("문의게시글 상세보기에 실패하였습니다.");
					}
					
					return mv;
					
				}
			
			
			//정보공유게시판 수정하기페이지 들어가기(뷰만)
			@RequestMapping("comup.do")
			public ModelAndView ComUpdateView(ModelAndView mv,HttpServletRequest request) {
			
				int bNo = Integer.parseInt(request.getParameter("bNo"));
				System.out.println("bNo : " + bNo);
				
				System.out.println("ㅇㅇ");
				Attachment board = bService.selectBoard1(bNo);
				Attachment board2 = bService.selectPicBoard1(bNo);
				Attachment board3 = bService.selectPicBoard2(bNo);
				Attachment board4 = bService.selectPicBoard3(bNo);

				Board board123 = bService.selectBoard2(bNo);
				
				 if(board123 != null) {
			         mv.addObject("board", board);
			         mv.addObject("board2",board2);
			         mv.addObject("board3",board3);
			         mv.addObject("board4",board4);
			         mv.addObject("board123", board123);
			         mv.setViewName("board/community/comunityUpdateForm");
			      } else {
			         throw new BoardException("게시글 상세보기에 실패하였습니다.");
			      }

				
				return mv;
			}
			
			//정보공유 사진삭제
				@RequestMapping("comPicDelete.do")
				public String comPicDelete(@RequestParam("iNo1") String iNo1, @RequestParam("bNo") String bNo ) {
					System.out.println("사진삭제들어왓음.");
					int iNo11 = Integer.parseInt(iNo1);
					
					int result = bService.comPicDelete(iNo11); // 사진삭제
					
					if(result>0) {
						System.out.println("성공");
					return "redirect:comup.do?bNo="+bNo; 
					}else {
						throw new BoardException("실패.");
					}
				}
			
			//문의사항게시판 수정하기페이지 들어가기(뷰만)
			@RequestMapping("proup.do")
			public ModelAndView proup(@RequestParam("bNo") int bNo
					, ModelAndView mv) {
				
				
				Board board = bService.selectProBoard(bNo);
				Propose propose = bService.selectPropose(bNo);
				
				
				
				int pty= propose.getpType();
				String ptty="";
				
				if(pty ==1) {
				 ptty = Integer.toString(pty);
					ptty="계정관련 문의";
				}else if(pty ==2) {
					ptty = Integer.toString(pty);
					ptty="사이트 이용관련 문의";
				}else if(pty==3) {
					ptty = Integer.toString(pty);
					ptty="베이비시터관련 문의";
				}else if(pty==4) {
					ptty = Integer.toString(pty);
					ptty="부모님관련 문의";
				}else if(pty==5) {
					ptty = Integer.toString(pty);
					ptty="기타 문의사항";
				}
				
				 if(board != null) {
			         mv.addObject("board123", board);
			     	mv.addObject("propose",propose);
			    	mv.addObject("ptty",ptty);
			         mv.setViewName("board/propose/proposeUpdateForm");
			      } else {
			         throw new BoardException("게시글 수정하기에 실패하였습니다.");
			      }

				
				return mv;
			}
			
				
			/* 정보공유 수정게시판(기능부분)*/
			@RequestMapping("comupdate.do")
			public String ComUpdate(@ModelAttribute Board b
									  	  , ModelAndView mv
									  	  , HttpServletRequest request, @RequestParam("bNo") int bNo,	
									  	  @RequestParam(value = "thumbnailImg1", required = false) MultipartFile titleImg,
											@RequestParam(value = "thumbnailImg2", required = false) MultipartFile contentImg1,
											@RequestParam(value = "thumbnailImg3", required = false) MultipartFile contentImg2,
											@RequestParam(value = "thumbnailImg4", required = false) MultipartFile contentImg3) {
				System.out.println("comupdate.do들어옴");
				Attachment a;
				ArrayList<MultipartFile> list = new ArrayList<MultipartFile>();
				System.out.println(titleImg.getOriginalFilename());
				
				if(titleImg.getOriginalFilename() != "") {
					list.add(titleImg);
				}
				if(contentImg1.getOriginalFilename() != "") {
					list.add(contentImg1);
				}
				if(contentImg2.getOriginalFilename() != "") {
					list.add(contentImg2);
				}
				if(contentImg3.getOriginalFilename() != "") {
					list.add(contentImg3);
				}
				
				ArrayList<String> renameList = saveFile2(list, request);

				ArrayList<Attachment> aList = new ArrayList<Attachment>();
				
				int result = bService.updateComBoard(b);
				
				int result2=0;
				
				if(aList != null) {
				if (renameList != null) {
			
					for (int i = 0; i < renameList.size(); i++) {
						a = new Attachment();
						a.setOriginName(list.get(i).getOriginalFilename());
						a.setChangeName(renameList.get(i));
						a.setbNo(bNo);
						
						if (i == 0) {
							a.setiType(1);
						}
						else if(i==1)
						{
							a.setiType(2);
						}
						else if(i==2) {
							a.setiType(3);
						}
						else if(i==3)
						{
							a.setiType(4);
						}
						aList.add(a);
						
						}
					}
					result2 = bService.insertComupAttachment(aList);
				}

				if(result > 0) {
					return "redirect:comListView.do?bNo="+b.getbNo();
					
				}else {
					throw new BoardException("게시글 등록을 실패하였습니다.");
				}
				
			
			}
			
			//정보공유 수정사진추가
			public ArrayList<String> saveFile2(ArrayList<MultipartFile> list1, HttpServletRequest request) {
				String root = request.getSession().getServletContext().getRealPath("resources");
				String savePath = root + "\\images\\board";

				File folder = new File(savePath);
				if (!folder.exists()) { // 占쎈쨨占쎈쐭揶쏉옙 占쎈씨占쎌몵筌롳옙 占쎈쨨占쎈쐭�몴占� 筌띾슢諭억옙堉긴빳占�
					folder.mkdirs();
				}

				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

				ArrayList<String> renameList = new ArrayList<String>();

				for (int i = 0; i < list1.size(); i++) {

					String originalFileName = list1.get(i).getOriginalFilename();
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
							+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
					String renamePath = folder + "\\" + renameFileName;

					try {
						list1.get(i).transferTo(new File(renamePath));

						renameList.add(renameFileName);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}

				}

				return renameList;
			}


			/* 문의사항 수정게시판(기능부분)*/
			@RequestMapping("proUpdate.do")
			public ModelAndView proUpdate(@ModelAttribute Board b
					, ModelAndView mv
					, HttpServletRequest request , @RequestParam("bNo") int bNo) {
				int result = bService.updateProBoard(b);
				
				if(result > 0) {
					mv.setViewName("redirect:detailPro.do?pNo=" + b.getbNo());
				}else {
					throw new BoardException("게시글 등록을 실패하였습니다.");
				}
				
				return mv;
			}
			
			// 정보공유 게시판 삭제하기
			@RequestMapping("comdelete.do")
			public ModelAndView deleteCom(@RequestParam("bNo") int bNo, ModelAndView mv) {

				
				int result = bService.deleteComBoard(bNo);
			
				if(result > 0) {
					mv.setViewName("redirect:comListView.do");
				}else {
					throw new BoardException("게시글 삭제에 실패하였습니다.");
				}
				return mv;
				
			}
			// 문의사항 게시판 삭제하기
			@RequestMapping("proDelete.do")
			public ModelAndView deletePro(@RequestParam("bNo") int bNo, ModelAndView mv) {
				
				int result = bService.deleteProBoard(bNo);
				if(result > 0) {
					mv.setViewName("redirect:proListView.do");
				}else {
					throw new BoardException("게시글 삭제에 실패하였습니다.");
				}
				return mv;
				
			}
			
			@RequestMapping("reply.do")
			public void getComReplyList(HttpServletResponse response, int bNo) throws IOException {
				

				ArrayList<Reply> rList = bService.selectUserReply(bNo);
			
				for( Reply r : rList) {
					r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
					r.setrWriter(URLEncoder.encode(r.getrWriter(), "utf-8"));
					r.setnCreate_Date(r.getnCreate_Date());

				}
				
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(rList, response.getWriter());
			}
			
			@RequestMapping("addReplyMH.do")
			public void insertComReplyMH(HttpServletResponse response, String rContent, String userId, int bNo) throws IOException {
				
				Reply reply = new Reply();
				reply.setrWriter(userId);
				reply.setnContent(rContent);
				reply.setbNo(bNo);
				
				
				System.out.println("댓글 작성자 확인!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + userId);
				
				int result = bService.insertReplyMH(reply);
				
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(result, response.getWriter());
			}
			
			//신고하기 오픈
			@RequestMapping("openReport.do")
			public ModelAndView openReport( @RequestParam("bNo") int bNo, ModelAndView mv) {
				
				Board board = bService.selectRepBoard(bNo);

				if(board != null) {
			         mv.addObject("board123", board);
			         mv.setViewName("board/report/reportOpen");
			     
			      } else {
			         throw new BoardException("신고글 오픈에 실패하였습니다.");
			      }
				return mv;
			}
			
			// 신고하기 DB등록
			@RequestMapping("radioCommit.do")
			public String radioCommit(@ModelAttribute Report r) {
				
				
				int result = bService.insertReport(r);
				
				if (result >=1) {
					return "board/report/reportClose";
				} else {
					throw new BoardException("신고.");
				}
			}
			
			
			
			//정보공유 검색기능
			@RequestMapping("searchCom")
			public ModelAndView searchCom(@RequestParam("search_target") String search_target, 
								@RequestParam(value = "page", required = false) Integer page,
								ModelAndView mv,@RequestParam("search") String search) {
				System.out.println(search_target);
				System.out.println("search:"+search);
				int currentPage = 1;       
				if (page != null) {
					currentPage = page;
				}


				if(search_target.equals("title_content")) {
					int listCount = bService.getSearchCount(search);
					PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
					
					ArrayList<Board> list = bService.searchComtitleCon(pi,search);
					if (list != null) {
						mv.addObject("list1", list);
						mv.addObject("pi1",pi);
						mv.setViewName("board/community/comunityListView");
					} else {
						throw new BoardException("게시판불러오기에 실패하였습니다.");
					}
					return mv;
				} else if(search_target.equals("title")) {
					
					int listCount = bService.getSearchCounttitle(search);
					PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
					ArrayList<Board> list = bService.searchComtitle(pi,search);
					
					if (list != null) {
						mv.addObject("list1", list);
						mv.addObject("pi1",pi);
						mv.setViewName("board/community/comunityListView");
					} else {
						throw new BoardException("게시판불러오기에 실패하였습니다.");
					}
					return mv;
				} else if(search_target.equals("content")) {
					int listCount = bService.getSearchCountcon(search);
					PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
					ArrayList<Board> list = bService.searchComcon(pi,search);
					
					if (list != null) {
						mv.addObject("list1", list);
						mv.addObject("pi1",pi);
						mv.setViewName("board/community/comunityListView");
					} else {
						throw new BoardException("게시판불러오기에 실패하였습니다.");
					}
					return mv;
				} else if(search_target.equals("nick_name")) {
					int listCount = bService.getSearchCountnic(search);
					System.out.println("search : " + search);
					PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
					
					ArrayList<Board> list = bService.searchComnic(pi,search);
					if (list != null) {
						mv.addObject("list1", list);
						mv.addObject("pi1",pi);
						mv.setViewName("board/community/comunityListView");
					} else {
						throw new BoardException("게시판불러오기에 실패하였습니다.");
					}
					return mv;
				} 
				
			

				return mv;
				

			
			}
			
			@RequestMapping("deleteReply.do")
			public void deleteReply(HttpServletResponse response, String userId, int rNum) throws IOException {
				
				Reply reply = new Reply();
				reply.setrNum(rNum);
				reply.setrWriter(userId);

				
				int result = bService.deleteReply(reply);
				
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(result, response.getWriter());
			}
			
			@RequestMapping("updateReply.do")
			public void updateReply(HttpServletResponse response, String userId, int rNum, String nContent) throws IOException {
				
				Reply reply = new Reply();
				reply.setrNum(rNum);
				reply.setnContent(nContent);
				reply.setrWriter(userId);
				int result = bService.updateReply(reply);
				
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(result, response.getWriter());
			}
	}


  

