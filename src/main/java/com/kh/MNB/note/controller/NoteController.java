package com.kh.MNB.note.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.MNB.note.model.service.NoteService;

@Controller
public class NoteController {
	@Autowired
	NoteService ntService;
	
	
}
