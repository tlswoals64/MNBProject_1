package com.kh.MNB.note.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.note.model.vo.Note;

public interface NoteService {
	// 느슨한 결합구조때문에
	int insertNote(Note note);

	int SendNoteListCount(String user);

	int ResponNoteListCount(String user);

	ArrayList<Note> selectSendNoteList(PageInfo sendPi, String user);

	ArrayList<Note> selectResponNoteList(PageInfo responPi, String user);

	void updateRead(int nNo);

	Note detailNote(int nNo);

	Member selectRespone(String writer);



}
