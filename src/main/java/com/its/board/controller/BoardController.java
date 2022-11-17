package com.its.board.controller;

import com.its.board.dto.BoardDTO;
import com.its.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.IOException;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;
    @GetMapping("/board")
    public String board(){
        return "/boardPage/board";
    }

    @GetMapping("/board/saveForm")
    public String saveForm(){
        return "/boardPage/save";
    }

    @PostMapping("/board/save")
    public String boardSave(@ModelAttribute BoardDTO boardDTO) throws IOException {
        boardService.boardSave(boardDTO);
        return "/boardPage/board";
    }


}
