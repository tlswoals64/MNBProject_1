package com.kh.MNB.board.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.memo.model.vo.Memo;
import com.kh.MNB.propose.model.vo.Propose;

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
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // �럹�씠吏��뿉���븳 �젙蹂�
		
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
		
		if(board != null) {
			mv.addObject("board", board)/* .addObject("page", page) */.setViewName("board/community/nanumDetailView");
		}
		else {
			throw new BoardException("게시물 상세보기에 실패하였습니다 .");
		}
		
		return mv;
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
	public String insertNanumBoard(@ModelAttribute Board b,
													   @RequestParam("thumbnailImg1") MultipartFile titleImg,
													   @RequestParam(value="thumbnailImg2", required=false) MultipartFile contentImg1,
														@RequestParam(value="thumbnailImg3", required=false) MultipartFile contentImg2,
														@RequestParam(value="thumbnailImg4", required=false) MultipartFile contentImg3, HttpServletRequest request) {

		
		Member member = (Member)request.getSession().getAttribute("loginUser");
//		String userId = member.getUserId();
//		Board board = new Board(b.getbNo(), 2, b.getbTitle(), b.getbWriter(), b.getbContent(), 0, null, null, null);
		
		
		Board board = new Board(b.getbNo(), 2, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);

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
									@RequestParam(value="iNo3", required = false) String iNo3, HttpServletRequest request) {
		
//		System.out.println(iNo0);
//		System.out.println(iNo1);
//		System.out.println(iNo2);
//		System.out.println(iNo3);
		// update를 해줘야할 것은 숫자로 들어온 애
		// insert를 해줘야할 것은 ""로 들어온 애
		
		
		Member member = (Member)request.getSession().getAttribute("loginUser");
		Attachment a;
		Board board = new Board(b.getbNo(), 2, b.getbTitle(), member.getUserId(), b.getbContent(), 0, null, null, null);
//		
//		if(a.getChangeName() != null) {
//			deleteNanumFile(a.getChangeName(), request);
//		}
		
//		System.out.println(titleImg);
//		System.out.println(titleImg.getOriginalFilename());
//		System.out.println(contentImg1);
//		System.out.println(contentImg1.getOriginalFilename());
//		System.out.println(contentImg2);
//		System.out.println(contentImg2.getOriginalFilename());
//		System.out.println(contentImg3);
//		System.out.println(contentImg3.getOriginalFilename());
		
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
		
		// update, insert할 부분을 담은 ArrayList
		ArrayList<Attachment> updateList = new ArrayList<Attachment>();
		ArrayList<Attachment> insertList = new ArrayList<Attachment>();

		for(int i = 0; i < iNoString.size(); i++) {
			a = new Attachment();
			a.setbNo(b.getbNo());
			
			if(iNoString.get(i) != null && !iNoString.get(i).equals("")) { // update
				a.setiNo(Integer.parseInt(iNoString.get(i)));
				a.setOriginName(originNameList.get(i));
				
				if(i == 0) a.setiType(0);
				else	   a.setiType(1);
				
				updateList.add(a);
			}
			
			if(iNoString.get(i) != null && iNoString.get(i).equals("")) { // insert
				a.setOriginName(originNameList.get(i));
				a.setiType(1);
				
				insertList.add(a);
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
		
		if(!updateList.isEmpty()) result2 = bService.updateNanumAttachment(updateList);
		if(!insertList.isEmpty()) result3 = bService.insertSubNanumAttachment(insertList);
		int result = result1 + result2 + result3;

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
		if (!folder.exists()) { // 占쎈쨨占쎈쐭揶쏉옙 占쎈씨占쎌몵筌롳옙 占쎈쨨占쎈쐭�몴占� 筌띾슢諭억옙堉긴빳占�
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
	
	@RequestMapping("rList.do")
	public void getReplyList(HttpServletResponse response, int bNo) throws IOException {
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
	public String inCom() {
		return "board/community/comunityInsertView";
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

		System.out.println(r);
		
		int result = bService.insertNanumReply(r);

		
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

		ArrayList<String> renameList = saveFile(list, request);

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

		int result1 = bService.insertBoard(board);
		int result2 = bService.insertAttachment(aList);

		int result = result1 + result2;

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
		System.out.println("BNo ? : " + bNo);
		bService.addReadCount1(bNo);
		ArrayList<Attachment> board = bService.selectBoard1(bNo);
		Board board123 = bService.selectBoard2(bNo);
		
		if (board != null) {
			mv.addObject("m", member);
			mv.addObject("board", board);
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

	
	//정보공유게시판 수정하기페이지 들어가기
	@RequestMapping("comup.do")
	public ModelAndView boardUpdateView(@RequestParam("bNo") int bNo, ModelAndView mv) {
		ArrayList<Attachment> board = bService.selectBoard1(bNo);

		mv.addObject("board", board)
		  .setViewName("board/community/comunityUpdateForm");
		
		return mv;
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
	
	/*
	 * // 정보공유게시판 수정하기
	 * 
	 * @RequestMapping("comupdate.do") public ModelAndView boardUpdate(ModelAndView
	 * mv, @ModelAttribute Board b, @RequestParam("page") Integer
	 * page, @RequestParam("reloadFile") MultipartFile reloadFile,
	 * HttpServletRequest request) { if(reloadFile != null && !reloadFile.isEmpty())
	 * { // 등록되있는 파일이 있을 경우 if(b.getRenameFile() != null) {
	 * deleteFile(b.getRenameFile(), request); }
	 * 
	 * String renameFileName = saveFile(reloadFile, request);
	 * 
	 * if(renameFileName != null) {
	 * b.setOriginalFile(reloadFile.getOriginalFilename());
	 * b.setRenameFile(renameFileName); } }
	 * 
	 * int result = bService.updateBoard(b);
	 * 
	 * if(result > 0) { mv.addObject("page", page)
	 * .setViewName("redirect:bdetail.do?bId=" + b.getbId()); } else { throw new
	 * BoardException("게시글 수정에 실패하였습니다."); }
	 * 
	 * return mv; }
	 * 
	 * public void deleteFile(String fileName, HttpServletRequest request) { String
	 * root = request.getSession().getServletContext().getRealPath("resources");
	 * String savePath = root + "\\buploadFiles";
	 * 
	 * File f = new File(savePath + "\\" + fileName);
	 * 
	 * if(f.exists()) { f.delete(); } }
	 */
		
	@RequestMapping("reply.do")
	public void getReplyList(HttpServletResponse response, int bNo) throws IOException {
		
		System.out.println("!!!!!!!!!!!!!!!!!!!!! : " + bNo);
		ArrayList<Reply> rList = bService.selectUserReply(bNo);

		for( Reply r : rList) {
			r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
			r.setrWriter(URLEncoder.encode(r.getrWriter(), "utf-8"));
			r.setnCreate_Date(r.getnCreate_Date());

		}
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList, response.getWriter());
	}
	
	// 占쌨몌옙 占쌩곤옙
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
