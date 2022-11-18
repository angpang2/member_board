package com.its.board.repository;

import com.its.board.dto.BoardDTO;
import com.its.board.dto.FileDTO;
import com.its.board.dto.PageDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
   private SqlSessionTemplate sql;
    public void boardSave(BoardDTO boardDTO) {
        sql.insert("Board.save",boardDTO);
    }

    public void boardsaveFile(BoardDTO boardDTO) {
        sql.insert("Board.saveFile",boardDTO);
    }

    public BoardDTO boardSelect(BoardDTO boardDTO) {
        return sql.selectOne("Board.select",boardDTO);
    }

    public List<BoardDTO> boardList(PageDTO pageDTO) {
        return sql.selectList("Board.list",pageDTO);
    }

    public int boardCount() {
        return sql.selectOne("Board.count");
    }

    public BoardDTO boardDetail(Long board_id) {
        return sql.selectOne("Board.detail",board_id);
    }

    public FileDTO fileCheck(Long board_id) {
        return sql.selectOne("Board.fileCheck",board_id);
    }

    public void boardUpdate(BoardDTO boardDTO) {
        sql.update("Board.update",boardDTO);
    }
}
