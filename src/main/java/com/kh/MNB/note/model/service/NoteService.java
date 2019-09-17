package com.kh.MNB.note.model.service;

import java.util.ArrayList;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.note.model.vo.Note;

public interface NoteService {
	// 느슨한 결합구조때문에
	int insertNote(Note note);

	int getNoteListCount();

	ArrayList<Note> selectNoteList(PageInfo pi);

	void updateRead(int nNo);

	Note selectNote(int nNo);
	
	
}
