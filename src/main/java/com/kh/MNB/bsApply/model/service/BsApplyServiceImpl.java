package com.kh.MNB.bsApply.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.bsApply.model.dao.BsApplyDAO;
import com.kh.MNB.bsApply.model.vo.BSApply;
import com.kh.MNB.member.model.vo.Member;

@Service("bsaService")
public class BsApplyServiceImpl implements BsApplyService {
	
	@Autowired
	BsApplyDAO bsaDAO;
	
	public BsApplyServiceImpl() {
	}
	
	@Override
	public int getListCount() {
		return bsaDAO.getListCount();
	}
	
	@Override
	public ArrayList<BSApply> selectmemberLevelList(PageInfo pi) {
		return bsaDAO.selectmemberLevelList(pi);
	}
	
	@Override
	public BSApply selectBsaDetail(String userId) {
		return bsaDAO.selectBsaDetail(userId);
	}
	
	@Override
	public int levelUpdate(Member m) {
		return bsaDAO.levelUpdate(m);
	}
	
}
