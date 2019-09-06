package com.kh.MNB.fna.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.fna.model.dao.FnADAO;
import com.kh.MNB.fna.model.vo.FnA;

@Service("fService")
public class FnAServiceImpl implements FnAService {
	
	@Autowired
	FnADAO fDAO;

	@Override
	public ArrayList<FnA> fIntro() {
		return fDAO.fIntro();
	}
	
	
}
