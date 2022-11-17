package com.its.board.repository;

import com.its.board.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
