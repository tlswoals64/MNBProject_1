package com.kh.MNB.note.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.member.model.vo.Member;
import com.kh.MNB.note.model.vo.Note;

@Repository("ntDAO")
public class NoteDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int SendNoteListCount(String user) {
		return sqlSession.selectOne("noteMapper.SendNoteListCount", user);
	}

	public int ResponNoteListCount(String user) {
		return sqlSession.selectOne("noteMapper.ResponNoteListCount", user);
	}

	public ArrayList<Note> selectSendNoteList(PageInfo sendPi, String user) {
		int offset = (sendPi.getCurrentPage() - 1) * sendPi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, sendPi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noteMapper.selectSendNoteList", user, rowBounds);
	}

	public ArrayList<Note> selectResponNoteList(PageInfo responPi, String user) {
		int offset = (responPi.getCurrentPage() - 1) * responPi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, responPi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noteMapper.selectResponNoteList", user, rowBounds);
	}
	
	public int insertNote(Note note) {
		return sqlSession.insert("noteMapper.insertNote", note);
	}

	public void updateRead(int nNo) {
		sqlSession.update("noteMapper.updateRead", nNo);
	}

	public Note detailNote(int nNo) {
		return sqlSession.selectOne("noteMapper.detailNote", nNo);
	}

	public Member selectNote(String writer) {
		return sqlSession.selectOne("noteMapper.selectNote", writer);
	}




	
}
