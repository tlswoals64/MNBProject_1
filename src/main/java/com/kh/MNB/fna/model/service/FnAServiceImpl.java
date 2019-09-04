package com.kh.MNB.fna.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.fna.model.dao.FnADAO;

@Service("fService")
public class FnAServiceImpl implements FnAService {
	
	@Autowired
	FnADAO fDAO;
	
	
}
