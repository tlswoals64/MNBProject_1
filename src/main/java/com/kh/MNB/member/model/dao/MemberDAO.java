package com.kh.MNB.member.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.Board;
import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.bsApply.model.vo.BSApply;
import com.kh.MNB.member.model.vo.Like;
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

	public Member selectMember(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.selectMember", m);
	}

	public String idSearch(Member m) {
		return sqlSession.selectOne("memberMapper.idSearch", m);
	}

	public String pwdSearch(String userId) {
		return sqlSession.selectOne("memberMapper.pwdSearch", userId);
	}

	public Member detailMember(String userId) {
		return sqlSession.selectOne("memberMapper.detailMember", userId);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}

	public int pwdUpdate(Member m) {
		return sqlSession.update("memberMapper.pwdUpdate", m);
	}

	public int getmyListCount(String bWriter) {
		return sqlSession.selectOne("memberMapper.getmyListCount",bWriter);
	}

	public ArrayList<Board> myBoardList(PageInfo pi, String bWriter) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.myBoardList", bWriter, rowBounds);
	}

	public int deleteMember(String id) {
		return sqlSession.update("memberMapper.deleteMember", id);
	}

	public int myBoardUpdate(Map<String, String> map) {
		return sqlSession.update("memberMapper.myBoardUpdate",map);
	}


	public Board boardType(int bNo) {
		return sqlSession.selectOne("memberMapper.boardType", bNo);
	}

	public int pwdcUpdate(Member m) {
		return sqlSession.update("memberMapper.pwdcUpdate", m);
	}

	public String pwdMemberSearch(Member m) {
		return sqlSession.selectOne("memberMapper.pwdMemberSearch",m);
  }
	public BSApply myPageBsaCheck(Member m) {
		return sqlSession.selectOne("memberMapper.myPageBsaCheck", m);
	}

	public Member myPageInfo(Member m) {
		return sqlSession.selectOne("memberMapper.myPageInfo", m);
	}

	public void blackListCancle(Member m) {
		sqlSession.update("memberMapper.blackListCancle", m);
		
	}

	public int mUserCount() {
		return sqlSession.selectOne("memberMapper.mUserCount");
	}

	public int mDecCount() {
		return sqlSession.selectOne("memberMapper.mDecCount");
	}

	public int mQnacCount() {
		return sqlSession.selectOne("memberMapper.mQnacCount");
	}

	public ArrayList<Member> seletMUserTopList() {
		return (ArrayList)sqlSession.selectList("memberMapper.seletMUserTopList");
	}

	public ArrayList<Like> mylikeList(PageInfo pi, String bWriter) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.mylikeList", bWriter, rowBounds);
	}

	public int getmylikeCount(String bWriter) {
		return sqlSession.selectOne("memberMapper.getmylikeCount",bWriter);
	}

	

}
