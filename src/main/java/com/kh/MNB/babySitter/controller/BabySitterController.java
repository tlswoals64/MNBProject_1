package com.kh.MNB.babySitter.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.MNB.babySitter.model.exception.BabySitterException;
import com.kh.MNB.babySitter.model.service.BabySitterService;
import com.kh.MNB.babySitter.model.vo.BabySitter;
import com.kh.MNB.babySitter.model.vo.Momboard;
import com.kh.MNB.board.model.exception.BoardException;
import com.kh.MNB.board.model.vo.Attachment;
import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
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
   
   @RequestMapping("suppotList.do")
   public ModelAndView suppotList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
      
      int currentPage = 1;
      if(page != null) {
         currentPage = page;
      }
      
      int listCount = bsService.getListCount(); // 
      
      PageInfo pi = Pagination.getPageInfo(currentPage, listCount); // 
      
      ArrayList list = bsService.selectList(pi);
      
      System.out.println("suppotList.do list : " + list); 
      
      if(list != null) {
         mv.addObject("list", list);
         mv.addObject("pi", pi);
         mv.setViewName("board/baby/babySitter/sitter_Suppot");
      }
      else {
         throw new BoardException("게시글 조회에 실패하였습니다.");
      }
      return mv;
   }
   
   @RequestMapping("suppotInsert.do")
   public String suppotInsert() {
      return "board/baby/babySitter/suppotInsert";
   }
   @RequestMapping("babymom.do")
   public ModelAndView BabyCareList(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
	   int currentPage = 1;
	   if(page !=null) {
		   currentPage= page;		   
	   }
	   int listCount= bsService.getMomListCount();
	   PageInfo pi= Pagination.getPageInfo(currentPage, listCount);
	   ArrayList bclist = bsService.selectMomlist(pi);
	   if(bclist !=null) {
		   mv.addObject("bclist", bclist);
		   mv.addObject("pi", pi);
		   mv.setViewName("board/baby/babymom/babyCareList");
	   }else {
		   throw new BabySitterException("게시글 작성에 실패하였습니다.");
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
   
   
   
   
   @RequestMapping(value="momDetail.do", method=RequestMethod.POST)
   public ModelAndView momDetail(@RequestParam("bNo") int bNo, @RequestParam("bWriter") String bWriter,ModelAndView mv) {
	   System.out.println(bWriter);
	   Board board = new Board();
	   board.setbNo(bNo);
	   board.setbWriter(bWriter);
	   System.out.println(board.getbNo());
	   System.out.println(board.getbWriter());
	   Momboard momboard = bsService.selectDetail(board);
	   System.out.println(momboard);
	   if(momboard!=null) {
		   mv.addObject("momboard", momboard).setViewName("board/baby/babymom/bcdetailView");
	   }else {
		   throw new BabySitterException("게시글 조회에 실패하였습니다."); 
	   }
 
	   return mv;
	   
   }
   
   
   
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
	   String address= postNum + " "+ addr1 +" "+ addr2 +" "+ addr3;
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
	   
	   Board board = new Board(b.getbNo(), 3, b.getbTitle(), member.getNickName(),b.getbContent(), 0, null, null, null);
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
}
   
