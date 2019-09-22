package com.kh.MNB.babySitter.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;

import javax.management.MXBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.MNB.babySitter.model.exception.BabySitterException;
import com.kh.MNB.babySitter.model.service.BabySitterService;
import com.kh.MNB.babySitter.model.vo.BabySitter;
import com.kh.MNB.babySitter.model.vo.Momboard;
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
   
   //베이비시터 모집 리스트
   @RequestMapping("babymom.do")
   public ModelAndView BabyCareList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
	   int currentPage = 1;
	   if(page !=null) {
		   currentPage= page;		   
	   }
	   int listCount= bsService.getMomListCount();
	   PageInfo pi= Pagination.getPageInfo(currentPage, listCount);
	   ArrayList<Momboard> bclist = bsService.selectMomlist(pi);
	   if(bclist !=null) {
		   mv.addObject("bclist", bclist);
		   mv.addObject("pi", pi);
		   mv.setViewName("board/baby/babymom/babyCareList");
	   }else {
		   throw new BabySitterException("게시글 리스트 조회에 실패하였습니다.");
	   }
      return mv;
   }
   @RequestMapping("babymomIn.do")
   public String babyMomIn() {      
      return "board/baby/babymom/babyMomIn";
   }
   @RequestMapping("bcdetailView.do")
   public String bcDetailView() {      
      return "board/baby/babymom/bcdetailView";
   }
   

//베이비시터모집 디테일
   @RequestMapping("momDetail.do")
   public ModelAndView momDetail(@RequestParam("bNo") int bNo, @RequestParam("page") int page,  ModelAndView mv) {
	   bsService.addMomReadCount(bNo);
	   Momboard momboard = bsService.selectDetail(bNo);

	   System.out.println(momboard);
	  
	   
	   if(momboard!=null) {
		   mv.addObject("momboard", momboard)
		   .addObject("page", page)
		   .setViewName("board/baby/babymom/bcdetailView");
	   }else {
		   throw new BabySitterException("게시글 조회에 실패하였습니다."); 
	   }
	   return mv;
	
		
   }
//베이비시터모집 글쓰기
   @RequestMapping(value="babymominsert.do", method=RequestMethod.POST)
   public String insertMom(@ModelAttribute Momboard b,  @RequestParam("time1") String time1, @RequestParam("time2") String time2,
		   				   @RequestParam("postNum") String postNum, @RequestParam("addr1") String addr1, @RequestParam("addr2") String addr2, @RequestParam("addr3") String addr3,
		   				   @RequestParam("gender1") String gender1, @RequestParam(value="gender2", required=false) String gender2, @RequestParam(value="gender3", required=false) String gender3,
		   				   @RequestParam("age1") String age1, @RequestParam(value="age2", required=false) String age2, @RequestParam(value="age3", required=false) String age3,
		   				   @RequestParam Map<String, String> params, @RequestParam(value="active", required=false) String[] active, @RequestParam(value="req1", required=false) String req1, @RequestParam(value="req2", required=false) String req2, @RequestParam(value="req3", required=false) String req3,
		   				   @RequestParam("uploadFile") MultipartFile contentImg, HttpServletRequest request) {
	   	    
		Member member = (Member)request.getSession().getAttribute("loginUser");		
		
		b.setbWriter(member.getNickName());
		int bType=3;
		b.setbType(bType);
	   String bGender =gender1;
	   if(gender2!=null) {
		   bGender += ","+ gender2;
		   if(gender3!=null){
			   bGender +="," + gender3;
		   }
	   }
	   b.setbGender(bGender);
	   String bAge = age1;
	   if(age2!=null) {
		   bAge += ","+ age2;
		   if(age3!=null){
			   bAge +="," + age3;
		   }
	   }
	   b.setbAge(bAge);
	   String time = time1 +" ~ " + time2;
	   b.setBcTime(time);
	   String address= addr1 +"/"+ addr2 +"/"+ addr3;
	   b.setAddress(address);
	   String bActive = "";
	   for(int i=0; i<active.length;i++) {
		   if(i<active.length-1) {
		   bActive += active[i]+",";
		   }else if(i==active.length-1) {
			   bActive += active[i];
		   }		   
	   }
	   b.setBcActivity(bActive);
	   String req = req1 + "," + req2 + "," +req3;
	   b.setReq(req);
	   
	   Board board = new Board(b.getbNo(), 3, b.getbTitle(), member.getUserId(),b.getbContent(), 0, null, null, null);
	   Attachment Attachment = new Attachment(b.getbNo(), b.getOriginName(), b.getChangeName(), null);
	   BabySitter babySitter = new BabySitter(b.getBcSalary(), b.getBcTime(),b.getBcActivity(),b.getReq(),b.getbNo(),b.getAddress(),b.getPersonnel(),b.getbAge(),b.getbGender());
	   
	   String renameFileName = saveFile(contentImg, request);
		if(renameFileName != null) {
			Attachment.setOriginName(contentImg.getOriginalFilename());
			Attachment.setChangeName(renameFileName);
		}
		
		System.out.println(b);
		System.out.println(board);
		System.out.println(Attachment);
		System.out.println(babySitter);
		
		int result=0;
		int result1 = bsService.insertMomBoard(board);		
		int result2 = bsService.insertMomAttachment(Attachment);
		int result3 = bsService.insertBcMojib(babySitter);
		result= result1+result2+result3;
		if(result>2) {  
	   return "redirect:babymom.do";
		}else {
			throw new BabySitterException("게시글 작성에 실패하였습니다.");
		}
	   
   }	   
		public String saveFile(MultipartFile file, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\images\\board\\babymom";
			
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
		//베이비시터모집 수정뷰
		@RequestMapping("momboardUpdateForm.do")
		public ModelAndView momboardUpdateForm(ModelAndView mv, @RequestParam("bNo") int bNo, @RequestParam("page") int page) {
			Momboard momboard = bsService.momboardUpdateForm(bNo);
			System.out.println(momboard);
			if(momboard!=null) {
				mv.addObject(momboard)
				.addObject("page",page)
				.setViewName("board/baby/babymom/babyMomUpdate");
			}else {
				throw new BabySitterException("게시글 수정에 실패하였습니다.");
			}
			
			return mv;
		}
		//베이비시터모집 수정
		@RequestMapping("babymomUpdate.do")
		public ModelAndView momUpdate(@ModelAttribute Momboard b,  @RequestParam("time1") String time1, @RequestParam("time2") String time2,
		   @RequestParam("postNum") String postNum, @RequestParam("addr1") String addr1, @RequestParam("addr2") String addr2, @RequestParam("addr3") String addr3,
		   @RequestParam("gender1") String gender1, @RequestParam(value="gender2", required=false) String gender2, @RequestParam(value="gender3", required=false) String gender3,
		   @RequestParam("age1") String age1, @RequestParam(value="age2", required=false) String age2, @RequestParam(value="age3", required=false) String age3,
		   @RequestParam Map<String, String> params, @RequestParam(value="active", required=false) String[] active, @RequestParam(value="req1", required=false) String req1, @RequestParam(value="req2", required=false) String req2, @RequestParam(value="req3", required=false) String req3,
		   @RequestParam(value = "inputimg", required = false) MultipartFile titleImg, HttpServletRequest request, @RequestParam("page") int page,ModelAndView mv) {
			
			Member member = (Member)request.getSession().getAttribute("loginUser");		
			
			b.setbWriter(member.getNickName());
			int bType=3;
			b.setbType(bType);
		   String bGender =gender1;
		   if(gender2!=null) {
			   bGender += ","+ gender2;
			   if(gender3!=null){
				   bGender +="," + gender3;
			   }
		   }
		   b.setbGender(bGender);
		   String bAge = age1;
		   if(age2!=null) {
			   bAge += ","+ age2;
			   if(age3!=null){
				   bAge +="," + age3;
			   }
		   }
		   b.setbAge(bAge);
		   String time = time1 +" ~ " + time2;
		   b.setBcTime(time);
		   String address= addr1 +"/"+ addr2 +"/"+ addr3;
		   b.setAddress(address);
		   String bActive = "";
		   for(int i=0; i<active.length;i++) {
			   if(i<active.length-1) {
			   bActive += active[i]+",";
			   }else if(i==active.length-1) {
				   bActive += active[i];
			   }		   
		   }
		   b.setBcActivity(bActive);
		   String req = req1 + "," + req2 + "," +req3;
		   b.setReq(req);
		   
		   Board board = new Board(b.getbNo(), 3, b.getbTitle(), member.getUserId(),b.getbContent(), 0, null, null, null);
		   Attachment Attachment = new Attachment(b.getbNo(), b.getOriginName(), b.getChangeName(), null);
		   BabySitter babySitter = new BabySitter(b.getBcSalary(), b.getBcTime(),b.getBcActivity(),b.getReq(),b.getbNo(),b.getAddress(),b.getPersonnel(),b.getbAge(),b.getbGender());
		  
			if(titleImg != null && !titleImg.isEmpty()) { // 등록되있는 파일이 있을 경우
				if(b.getChangeName() != null) {
					deleteMomFile(b.getChangeName(), request);
				}				
				String renameFileName = saveFile(titleImg, request);
				if(renameFileName != null) {
					Attachment.setOriginName(titleImg.getOriginalFilename());
					Attachment.setChangeName(renameFileName);
				}
			}
			
			
			System.out.println(b);
			System.out.println(board);
			System.out.println(Attachment);
			System.out.println(babySitter);
			
			int result=0;
			int result1 = bsService.upDateMomBoard(board);		
			int result2 = bsService.upDateMomAttachment(Attachment);
			int result3 = bsService.upDateBcMojib(babySitter);
			result= result1+result2+result3;
			if(result>2) {  
					mv.addObject("page", page)
				  .setViewName("redirect:momDetail.do?bNo=" + b.getbNo());
			}else {
				throw new BabySitterException("게시글 작성에 실패하였습니다.");
			}
			return mv;
		}
		
		public void deleteMomFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\images\\board\\babymom";
			
			File f = new File(savePath + "\\" + fileName);
			
			if(f.exists()) {
				f.delete();
			}
		}
		@RequestMapping("rMomList.do")
		public void getMomReplyList(HttpServletResponse response, int bNo) throws Exception {
			ArrayList<Reply> rlist = bsService.selectMomReplyList(bNo);
			
			for(Reply r : rlist) {
				r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
			}
			
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson(rlist, response.getWriter());
		}
		
		@RequestMapping("addMomReply.do")
		public String insertMomReply(@ModelAttribute Reply r, HttpSession session) throws IOException {
			Member loginUser = (Member)session.getAttribute("loginUser");
			r.setrWriter(loginUser.getNickName());
			System.out.println(r);
			
			int result = bsService.insertMomReply(r);
			
			if(result > 0) {
				return "success";
			}
			else {
				throw new BoardException("댓글 작성에 실패하였습니다.");
			}

		}
		
		
	
   // 베이비시터 지원 상세 페이지
	@RequestMapping("suppotDetail.do")
	public ModelAndView suppotDetail(@RequestParam("bNo") int bNo, @RequestParam("page") int page, ModelAndView mv) {
		bsService.addReadCount(bNo);
		sitterSuppot suppot = bsService.selectSuppotBoard(bNo);
		
		System.out.println(suppot);
		
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
									@RequestParam("checkDay") String[] checkDay, HttpServletRequest request, HttpSession session) {
		String bcactive = "";
		for(int i = 0; i < active.length; i++) {
			if(i != active.length - 1) {
				bcactive = bcactive + active[i] + "/";
			} else {
				bcactive = bcactive + active[i];
			}
		}
		
		String day = "";
		for(int s = 0; s < checkDay.length; s++) {
			if(s < checkDay.length - 1) {
				day = day + checkDay[s] + "/";
			} else {
				day = day + checkDay[s];
			}
		}
		
		String time = "";
		String[] minTime =  time1.split(":");
		String[] maxTime =  time2.split(":");
		for(int i = Integer.parseInt(minTime[0]); i <= Integer.parseInt(maxTime[0]); i++) {
			if(i < Integer.parseInt(maxTime[0])) {
				time = time + i + "/";
			} else {
				time = time + i;
			}
		}
		
		String ad = suppot.getAddress() + "/" + detailAddress + "/" + extraAddress;
		suppot.setAddress(ad);
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String rename = saveSuppotFile(titleImg, request);
		
		Attachment Attachment = new Attachment(suppot.getbNo(), suppot.getOriginName(), rename, null);
		Board board = new Board(suppot.getbNo(), 4, suppot.getbTitle(), loginUser.getUserId(), suppot.getbContent(), 0, null, null, null);
		BabySitter sitter = new BabySitter(suppot.getbCcarrer(), suppot.getSalary(), day, time, bcactive, suppot.getbNo(), suppot.getAddress());
		
		if(rename != null) {
			Attachment.setOriginName(titleImg.getOriginalFilename());
			Attachment.setChangeName(rename);
			Attachment.setiType(0);
		}
		
		int result1 = bsService.insertSuppotBoard(board);
		int result2 = bsService.insertSuppotAttachment(Attachment);
		int result3 = bsService.insertSuppot(sitter);
		
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
	
	// 베이비시터 지원 수정 페이지
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
	
	// 베이지시터 지원 수정
	@RequestMapping("suppotUpdate.do")
	public ModelAndView suppotUpdate(ModelAndView mv, @ModelAttribute sitterSuppot b, @RequestParam("page") int page,
									@RequestParam(value = "inputimg", required = false) MultipartFile titleImg,
									@RequestParam("detailAddress") String detailAddress, @RequestParam("extraAddress") String extraAddress,
									@RequestParam("time1") String time1, @RequestParam("time2") String time2, @RequestParam("active") String[] active,
									@RequestParam("checkDay") String[] checkDay, HttpServletRequest request, HttpSession session) {
		
		if(titleImg != null && !titleImg.isEmpty()) { // 교체되는 파일이 있을 경우
			if(b.getChangeName() != null) {
				deleteSuppotFile(b.getChangeName(), request);
			}
			
			String renameFileName = saveSuppotFile(titleImg, request);
			
			if(renameFileName != null) {
				b.setOriginName(titleImg.getOriginalFilename());
				b.setChangeName(renameFileName);
			}
		}
		
		String bcactive = "";
		for(int i = 0; i < active.length; i++) {
			if(i != active.length - 1) {
				bcactive = bcactive + active[i] + "/";
			} else {
				bcactive = bcactive + active[i];
			}
			System.out.println(bcactive);
		}
		
		String day = "";
		for(int s = 0; s < checkDay.length; s++) {
			if(s < checkDay.length - 1) {
				day = day + checkDay[s] + "/";
			} else {
				day = day + checkDay[s];
			}
		}
		
		String time = "";
		String[] minTime =  time1.split(":");
		String[] maxTime =  time2.split(":");
		for(int i = Integer.parseInt(minTime[0]); i <= Integer.parseInt(maxTime[0]); i++) {
			if(i < Integer.parseInt(maxTime[0])) {
				time = time + i + "/";
			} else {
				time = time + i;
			}
			System.out.println(time);
		}
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		String ad = b.getAddress() + "/" + detailAddress + "/" + extraAddress;
		b.setAddress(ad);
		
		Attachment Attachment = new Attachment(b.getbNo(), b.getOriginName(), b.getChangeName(), b.getUpload_Date());
		Board board = new Board(b.getbNo(), 4, b.getbTitle(), loginUser.getNickName(), b.getbContent(), b.getbCount(), b.getB_CreateDate(), b.getB_ModifyDate(), b.getStatus());
		BabySitter suppot = new BabySitter(b.getbCcarrer(), b.getSalary(), day, time, bcactive, b.getbNo(), b.getAddress());
		
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
	
	// 사진 교체시 존재하는 파일 삭제
	public void deleteSuppotFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\babySitter\\suppot";
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) {
			f.delete();
		}
	}
	
	// 지원 댓글 리스트
	@RequestMapping("rSuppotList.do")
	public void getSuppotReplyList(HttpServletResponse response, int bNo) throws Exception {
		ArrayList<Reply> rlist = bsService.selectSuppotReplyList(bNo);
		
		for(Reply r : rlist) {
			r.setnContent(URLEncoder.encode(r.getnContent(), "utf-8"));
		}
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rlist, response.getWriter());
	}
	
	// 댓글 추가
	@RequestMapping("addSuppotReply.do")
	public String insertSuppotReply(@ModelAttribute Reply r, HttpSession session) throws IOException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		r.setrWriter(loginUser.getUserId());
		System.out.println(r);
		
		int result = bsService.insertSuppotReply(r);
		
		if(result > 0) {
			 return "redirect:rSuppotList.do?bNo=" + r.getbNo();
		} else {
			throw new BoardException("댓글 등록에 실패하였습니다.");
		}
	}
	

	@RequestMapping("suppotSearch")
	public ModelAndView suppotSearch(ModelAndView mv) {
		
		
		
		return mv;
	}

}

