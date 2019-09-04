package com.kh.MNB.chat.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.chat.model.dao.ChatDAO;

@Service("cService")
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	ChatDAO cDAO;
	
	
}
