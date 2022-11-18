package com.its.board.repository;

import com.its.board.dto.BoardDTO;
import com.its.board.dto.CommentDTO;
import com.its.board.dto.FileDTO;
import com.its.board.dto.PageDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public void boardDelete(Long board_id) {
        System.out.println("리파지토리board_id = " + board_id);
        sql.delete("Board.delete",board_id);
    }


    public void commentSave(CommentDTO commentDTO) {
        sql.insert("Board.commentSave",commentDTO);
    }

    public List<CommentDTO> commentList(Long board_id) {
        return sql.selectList("Board.commentList",board_id);
    }
}
