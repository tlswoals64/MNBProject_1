package com.kh.MNB.bsApply.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.bsApply.model.dao.BsApplyDAO;

@Service("bsaService")
public class BsApplyServiceImpl implements BsApplyService {
	
	@Autowired
	BsApplyDAO bsaDAO;
	
	
}
