package com.kh.MNB.propose.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.propose.model.dao.ProposeDAO;

@Service("pService")
public class ProposeServiceImpl implements ProposeService {
	
	@Autowired
	ProposeDAO pDAO;
	
	
}
