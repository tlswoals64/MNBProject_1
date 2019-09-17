package com.kh.MNB.note.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.MNB.board.model.vo.PageInfo;
import com.kh.MNB.note.model.vo.Note;

@Repository("ntDAO")
public class NoteDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getNoteListCount() {
		return sqlSession.selectOne("noteMapper.getNoteListCount");
	}

	public ArrayList<Note> selectNoteList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noteMapper.selectNoteList", null, rowBounds);
	}
	
	public int insertNote(Note note) {
		return sqlSession.insert("noteMapper.insertNote", note);
	}

	public void updateRead(int nNo) {
		sqlSession.update("noteMapper.updateRead", nNo);
	}

	public Note selectNote(int nNo) {
		return sqlSession.selectOne("noteMapper.selectNote", nNo);
	}

	
}
