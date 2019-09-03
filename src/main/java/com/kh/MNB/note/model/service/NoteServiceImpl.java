package com.kh.MNB.note.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.note.model.dao.NoteDAO;

@Service("ntService")
public class NoteServiceImpl implements NoteService {
	
	@Autowired
	NoteDAO ntDAO;
	
	
}
