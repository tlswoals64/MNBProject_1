package com.kh.MNB.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;

@Repository("mDAO")
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("memberMapper.getListCount");
	}

	public ArrayList<Member> selectmemberManaList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); // 뛰어넘어야할 페이지,,, 수,,,
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectMList", null, rowBounds);
	}

	public int checkIdDup(String id) {
		return sqlSession.selectOne("memberMapper.idCheck", id);
	}

	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int checkNickName(String nickname) {
		return sqlSession.selectOne("memberMapper.nickCheck", nickname);
	}

	public Member selectUserDetail(String userId) {
		return sqlSession.selectOne("memberMapper.selectMDetail", userId);
	}


	public int mUserUpdate(Member m) {
		return sqlSession.update("memberMapper.mUserUpdate", m);
	}

}
