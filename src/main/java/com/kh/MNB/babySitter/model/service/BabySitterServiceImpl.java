package com.kh.MNB.babySitter.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.babySitter.model.dao.BabySitterDAO;

@Service("bsService")
public class BabySitterServiceImpl implements BabySitterService {
	
	@Autowired
	BabySitterDAO bsDAO;
	
	
}
