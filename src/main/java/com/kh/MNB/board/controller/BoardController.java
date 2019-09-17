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
import com.kh.MNB.board.model.vo.Reply;
import com.kh.MNB.common.Pagination;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.propose.model.vo.Propose;

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
		if (page != null) {
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
		} else {
			throw new BoardException("寃뚯떆湲� 議고쉶�뿉 �떎�뙣�븯���뒿�땲�떎.");
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

		if (renameList != null) {

			for (int i = 0; i < renameList.size(); i++) {
				a = new Attachment();
				a.setOriginName(list.get(i).getOriginalFilename());
				a.setChangeName(renameList.get(i));

				if (i == 0)
					a.setiType(0);
				else
					a.setiType(1);

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
		if (!folder.exists()) { // 占쎈쨨占쎈쐭揶쏉옙 占쎈씨占쎌몵筌롳옙 占쎈쨨占쎈쐭�몴占� 筌띾슢諭억옙堉긴빳占�
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

		ArrayList<String> renameList = new ArrayList<String>();

		for (int i = 0; i < list.size(); i++) {

			String originalFileName = list.get(i).getOriginalFilename();
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
					+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
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

		int result = bService.insertReply(r);

		if (result > 0) {
			return "success";
		} else {
			throw new BoardException("�뙎湲� �옉�꽦�뿉 �떎�뙣�븯���뒿�땲�떎.");
		}

	}

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
			mv.addObject("list1", list);
			mv.addObject("pi1", pi);
			mv.setViewName("board/community/comunityListView");
		} else {
			throw new BoardException("게시판불러오기에 실패하였습니다.");
		}

		return mv;

	}

	// 정보공유게시판
	@RequestMapping("inCom.do")
	public ModelAndView inCom(HttpSession session, ModelAndView mv) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		System.out.println("인서트폼 들어옴");
		mv.addObject(loginUser);
			
		mv.setViewName("board/community/comunityInsertView");
		return mv;
	}
	
	//문의사항게시판 글쓰기버튼 눌렀을때
	@RequestMapping("inPro.do")
	public ModelAndView inPro(HttpSession session, ModelAndView mv) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		System.out.println("문의사항인서트폼 들어옴");
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
//		String userId = member.getUserId();
//		Board board = new Board(b.getbNo(), 2, b.getbTitle(), b.getbWriter(), b.getbContent(), 0, null, null, null);
		
		System.out.println("Member : " + member);
		Board board = new Board(b.getbNo(), 1, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
		Attachment a;

		ArrayList<MultipartFile> list = new ArrayList<MultipartFile>();
		
		//int result = bService.insertNanumReply(r);

		
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
		
		if (renameList != null) {
			System.out.println("rename="+renameList.size());
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
					System.out.println("인서트컴!!!!");
					a.setiType(2);
				}
				else if(i==3)
				{
					a.setiType(3);
				}
				aList.add(a);
				
				}
			}
	
		int result1 = bService.insertBoard1(board);
		int result2 = bService.insertAttachment1(aList);

		int result = result1+result2;

		if (result == 2) {
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

	// 문의사항게시판 인서트(기능)

		@RequestMapping("insertPro.do")
		public String insertPro(@ModelAttribute Board b, 
				@RequestParam(value = "thumbnailImg1", required = false) MultipartFile titleImg,
				@RequestParam(value = "thumbnailImg2", required = false) MultipartFile contentImg1,
				@RequestParam(value = "thumbnailImg3", required = false) MultipartFile contentImg2,
				@RequestParam(value = "thumbnailImg4", required = false) MultipartFile contentImg3,
				HttpServletRequest request) {

			Member member = (Member)request.getSession().getAttribute("loginUser");
//			String userId = member.getUserId();
//			Board board = new Board(b.getbNo(), 2, b.getbTitle(), b.getbWriter(), b.getbContent(), 0, null, null, null);

			System.out.println("Member : " + member);
			Board board = new Board(b.getbNo(), 5, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
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

			ArrayList<String> renameList = saveFilePro(list, request);

			ArrayList<Attachment> aList = new ArrayList<Attachment>();

			if (renameList != null) {
				System.out.println("rename="+renameList.size());
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

			int result1 = bService.insertProBoard(board);
			int result2 = bService.insertProAttachment(aList);

			int result = result1 + result2;

			if (result == 2) {
				return "redirect:proposeListView.do";
			} else {
				throw new BoardException("野껊슣�뻻疫뀐옙 占쎈쾻嚥≪빘肉� 占쎈뼄占쎈솭占쎈릭占쏙옙占쎈뮸占쎈빍占쎈뼄.");
			}

		}
		// 문의사항게시판
		public ArrayList<String> saveFilePro(ArrayList<MultipartFile> list1, HttpServletRequest request) {
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
	
	
	
	
	// 정보공유게시판
	@RequestMapping("addReply1.do")
	@ResponseBody
	public String addReply1(Reply r, HttpSession session) {
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
	public ModelAndView bDetailView(HttpServletRequest request, ModelAndView mv) {
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
	
	// 문의사항게시판 리스트 불러오기
	@RequestMapping("proListView.do")
	public ModelAndView proListView(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = bService.getListCountPro();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Propose> list = bService.selectProList(pi);

		if (list != null) {
			mv.addObject("list1", list);
			mv.addObject("pi1", pi);
			mv.setViewName("board/propose/proposeListView");
		} else {
			throw new BoardException("문의사항게시판불러오기에 실패하였습니다.");
		}

		return mv;

	}

	//정보공유게시판 수정하기페이지 들어가기(뷰만)
	@RequestMapping("comup.do")
	public ModelAndView boardUpdateView(@RequestParam("bNo") int bNo
			
			  , ModelAndView mv) {
		
		Attachment board = bService.selectupPBoard1(bNo);
		Attachment board2 = bService.selectupPBoard2(bNo);
		Attachment board3 = bService.selectupPBoard3(bNo);
		Attachment board4 = bService.selectupPBoard4(bNo);
		Board board123 = bService.selectBoard2(bNo);
		
		if (board123 != null) {
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
	
	/* 정보공유 수정게시판(기능부분)*/
	@RequestMapping("comupdate.do")
	public ModelAndView boardUpdate(@ModelAttribute Board b
							  	  , ModelAndView mv
							  	  , HttpServletRequest request) {
		
		System.out.println("수정부분 들어옴.");
		
		int result = bService.updateComBoard(b);
		
		if(result > 0) {
			mv.setViewName("redirect:detailCom.do?bNo=" + b.getbNo());
		}else {
			throw new BoardException("게시글 등록을 실패하였습니다.");
		}
		
		return mv;
	}
	
	// 정보공유 게시판 삭제하기
	@RequestMapping("comdelete.do")
	public ModelAndView deleteBoard(@RequestParam("bNo") int bNo, ModelAndView mv) {
		System.out.println("삭제하기들어옴. bNo="+bNo);
		
		int result = bService.deleteComBoard(bNo);
	
		if(result > 0) {
			mv.setViewName("redirect:comListView.do");
		}else {
			throw new BoardException("게시글 삭제에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("reply.do")
	public void getReplyList(HttpServletResponse response, int bNo) throws IOException {
		

		ArrayList<Reply> rList = bService.selectUserReply(bNo);

		for( Reply r : rList) {
			r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
			r.setrWriter(URLEncoder.encode(r.getrWriter(), "utf-8"));
			r.setnCreate_Date(r.getnCreate_Date());

		}
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList, response.getWriter());
	}
	
	// 댓글
	@RequestMapping("addReplyMH.do")
	public void insertReplyMH(HttpServletResponse response, String rContent, String userId, int bNo) throws IOException {
		
		Reply reply = new Reply();
		reply.setrWriter(userId);
		reply.setnContent(rContent);
		reply.setbNo(bNo);
		
		int result = bService.insertReplyMH(reply);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(result, response.getWriter());
	}


}
