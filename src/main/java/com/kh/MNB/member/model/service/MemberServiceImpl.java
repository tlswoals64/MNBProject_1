package com.kh.MNB.member.model.service;

import java.util.ArrayList;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.bsApply.model.vo.BSApply;
import com.kh.MNB.member.model.dao.MemberDAO;
import com.kh.MNB.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO mDAO;
	
	@Autowired
	JavaMailSender mailSender;
	
	public MemberServiceImpl() {
	}
	
	@Override
	public int getListCount() {
		return mDAO.getListCount();
	}
	
	@Override
	public ArrayList<Member> selectmemberManaList(PageInfo pi) {
		return mDAO.selectmemberManaList(pi);
	}
	
	@Override
	public Member selectUserDetail(String userId) {
		return mDAO.selectUserDetail(userId);
	}
	
	@Override
	public int mUserUpdate(Member m) {
		return mDAO.mUserUpdate(m);
	}

	@Override

	public int checkIdDup(String id) {
		return mDAO.checkIdDup(id);
	}

	@Override
	public int insertMember(Member m) {
		return mDAO.insertMember(m);
	}

	@Override
	public int checkNickName(String nickname) {
		return mDAO.checkNickName(nickname);
	}

	@Override
	public boolean send(String subject, String text, String from, String to) {
		MimeMessage message = mailSender.createMimeMessage();

		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setSubject(subject);
			helper.setText(text);
			helper.setFrom(from);
			helper.setTo(to);

			mailSender.send(message);
			return true;
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return false;
	}

	public Member memberLogin(Member m) {
		return mDAO.selectMember(m);
	}

	@Override
	public String idSearch(Member m) {
		return mDAO.idSearch(m);

	}

	@Override
	public String pwdSearch(String userId) {
		return mDAO.pwdSearch(userId);
	}

	@Override
	public Member detailMember(String userId) {
		return mDAO.detailMember(userId);
	}

	@Override
	public int updateMember(Member m) {
		return mDAO.updateMember(m);
	}

	@Override
	public int pwdUpdate(Member m) {
		return mDAO.pwdUpdate(m);
	}


	@Override
	public int getmyListCount(String bWriter) {
		return mDAO.getmyListCount(bWriter);
	}

	@Override
	public ArrayList<Board> myBoardList(PageInfo pi, String bWriter) {
		return mDAO.myBoardList(pi, bWriter);
	}

	@Override
	public int deleteMember(String id) {
		return mDAO.deleteMember(id);
	}

	@Override
	public int myBoardupdate(Map<String, String> map) {
		return mDAO.myBoardUpdate(map);
	}

	@Override
	public Board boardType(int bNo) {
		return mDAO.boardType(bNo);
		
	}

	@Override
	public boolean checkSend(String subject, String string, String string2, String email) {
		MimeMessage message = mailSender.createMimeMessage();

		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setSubject(subject);
			helper.setText(string);
			helper.setFrom(string2);
			helper.setTo(email);

			mailSender.send(message);
			return true;
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean pwdSend(String subject, String string, String string2, String email) {
		MimeMessage message = mailSender.createMimeMessage();

		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setSubject(subject);
			helper.setText(string);
			helper.setFrom(string2);
			helper.setTo(email);

			mailSender.send(message);
			return true;
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public int pwdcUpdate(Member m) {
		
		return mDAO.pwdcUpdate(m);
	}

	@Override
	public String pwdMemberSearch(Member m) {
		return mDAO.pwdMemberSearch(m);
	}

	public BSApply myPageBsaCheck(Member m) {
		return mDAO.myPageBsaCheck(m);
	}

	@Override
	public Member myPageInfo(Member m) {
		return mDAO.myPageInfo(m);
	}
	
	@Override
	public void blackListCancle(Member m) {
		mDAO.blackListCancle(m);
		
	}
	
	@Override
	public int mUserCount() {
		return mDAO.mUserCount();
	}
	
	@Override
	public int mDecCount() {
		return mDAO.mDecCount();
	}
	
	@Override
	public int mQnacCount() {
		return mDAO.mQnacCount();
	}
	
	@Override
	public ArrayList<Member> seletMUserTopList() {
		return mDAO.seletMUserTopList();
	}

	@Override
	public ArrayList<Board> mylikeList(PageInfo pi, String bWriter) {
		return mDAO.mylikeList(pi, bWriter);
	}
}
