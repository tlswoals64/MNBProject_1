package com.kh.MNB.bsApply.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.bsApply.model.vo.BSApply;
import com.kh.MNB.member.model.vo.Member;

@Repository("bsaDAO")
public class BsApplyDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public ArrayList<BSApply> selectmemberLevelList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("bsApplyMapper.selectMLevelList", null, rowBounds);
	}

	public int getListCount() {
		return sqlSession.selectOne("bsApplyMapper.getListCount");
	}

	public BSApply selectBsaDetail(String userId) {
		return sqlSession.selectOne("bsApplyMapper.selectBsaDetail", userId);
	}

	public int levelUpdate(BSApply b) {
		int result = sqlSession.update("bsApplyMapper.levelMemberUpdate", b);
		return sqlSession.update("bsApplyMapper.levelUpdate", b);
	}
}
