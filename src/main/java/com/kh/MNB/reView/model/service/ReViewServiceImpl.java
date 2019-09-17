package com.kh.MNB.reView.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.reView.model.dao.ReViewDAO;

@Service("rvService")
public class ReViewServiceImpl implements ReViewService{
	
	@Autowired
	ReViewDAO rvDAO;
}
