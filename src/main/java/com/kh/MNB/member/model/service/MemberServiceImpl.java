package com.kh.MNB.member.model.service;

import java.util.ArrayList;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
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

	

	
	
	
}
