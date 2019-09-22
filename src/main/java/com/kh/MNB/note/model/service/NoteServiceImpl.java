package com.kh.MNB.note.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.note.model.dao.NoteDAO;
import com.kh.MNB.note.model.vo.Note;

@Service("ntService")
public class NoteServiceImpl implements NoteService {
	
	@Autowired
	NoteDAO ntDAO;

	@Override
	public int insertNote(Note note) {
		return ntDAO.insertNote(note);
	}
	
	@Override
	public int SendNoteListCount(String user) {
		return ntDAO.SendNoteListCount(user);
	}

	@Override
	public int ResponNoteListCount(String user) {
		return ntDAO.ResponNoteListCount(user);
	}

	@Override
	public ArrayList<Note> selectSendNoteList(PageInfo sendPi, String user) {
		return ntDAO.selectSendNoteList(sendPi, user);
	}

	@Override
	public ArrayList<Note> selectResponNoteList(PageInfo responPi, String user) {
		return ntDAO.selectResponNoteList(responPi, user);
	}
	
	@Override
	public void updateRead(int nNo) {
		ntDAO.updateRead(nNo);
	}

	@Override
	public Note detailNote(int nNo) {
		return ntDAO.detailNote(nNo);
	}

	@Override
	public Member selectRespone(String writer) {
		return ntDAO.selectNote(writer);
	}



}
