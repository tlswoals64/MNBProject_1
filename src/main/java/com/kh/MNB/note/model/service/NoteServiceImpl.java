package com.kh.MNB.note.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
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
	public int getNoteListCount() {
		return ntDAO.getNoteListCount();
	}

	@Override
	public ArrayList<Note> selectNoteList(PageInfo pi) {
		return ntDAO.selectNoteList(pi);
	}

	@Override
	public void updateRead(int nNo) {
		ntDAO.updateRead(nNo);
	}

	@Override
	public Note selectNote(int nNo) {
		return ntDAO.selectNote(nNo);
	}

	
	
}
