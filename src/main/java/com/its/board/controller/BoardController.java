package com.its.board.controller;

import com.its.board.dto.BoardDTO;
import com.its.board.dto.CommentDTO;
import com.its.board.dto.FileDTO;
import com.its.board.dto.PageDTO;
import com.its.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;
    @GetMapping("/board")
    public String board(@ModelAttribute PageDTO pageDTO, Model model){
        List<BoardDTO>boardList = boardService.boardList(pageDTO);
        model.addAttribute("boardList",boardList);
        PageDTO boardPage = boardService.boardPage(pageDTO);
        model.addAttribute("paging",boardPage);
        return "/boardPage/board";
    }

    @GetMapping("/board/saveForm")
    public String saveForm(){
        return "/boardPage/save";
    }

    @PostMapping("/board/save")
    public String boardSave(@ModelAttribute BoardDTO boardDTO) throws IOException {
        boardService.boardSave(boardDTO);
        return "redirect:/board";
    }

    @GetMapping("/board/detail")
    public String boardDetail(Model model,@RequestParam("board_id")Long board_id){
        BoardDTO boardDTO =boardService.boardDetail(board_id);
        FileDTO result = boardService.fileCheck(board_id);
        if(result != null){
            model.addAttribute("file",result);
        }
        model.addAttribute("board",boardDTO);
        //조회수 올리기
        boardService.boardUp(board_id);
        //댓글 있으면 가져오기
        List<CommentDTO> commentDTOList = boardService.commentList(board_id);
        if(commentDTOList != null){
            model.addAttribute("commentList",commentDTOList);
//            //댓글수 count
//            int commentCount = boardService.commentCount(board_id);
//            model.addAttribute("commentCount",commentCount);
        }

        return "/boardPage/detail";
    }







    @GetMapping("/commentCount")
    public void commentCount(@RequestParam("board_id")Long board_id , Model model){
        int commentCount = boardService.commentCount(board_id);
        model.addAttribute("commentCount",commentCount);
    }


    @GetMapping("/updateForm")
    public String updateForm(@RequestParam("board_id")Long board_id,Model model){
        BoardDTO boardDTO = boardService.boardDetail(board_id);
        model.addAttribute("board",boardDTO);
        return "/boardPage/update";
    }

    @PostMapping("board/update")
    public String boardUpdate(@ModelAttribute BoardDTO boardDTO){
        System.out.println("boardDTO = " + boardDTO);
        boardService.boardUpdate(boardDTO);
        return "redirect:/board";
    }

    @GetMapping("/board/delete")
    public String boardDelete(@RequestParam("board_id")Long board_id){
        System.out.println("board_id = " + board_id);
        boardService.boardDelete(board_id);
        return "redirect:/board";
    }
    @PostMapping("/board/comment")
    public List<CommentDTO> commentSave(@ModelAttribute CommentDTO commentDTO){
        boardService.commentSave(commentDTO);
        //board_id를 가지고 commentcount +1 시키기
        Long board_id = commentDTO.getBoard_id();
        System.out.printf("board_id = " + board_id);
        boardService.commentCountUp(board_id);
        //commenet list 가져오기
        List<CommentDTO> commentDTOList = boardService.commentList(board_id);


        return commentDTOList;
    }

    @PostMapping("/comment/save")
    //comment 저장하고 list로 가져오기
    public @ResponseBody List<CommentDTO> commentSave2(@ModelAttribute CommentDTO commentDTO){
        boardService.commentSave(commentDTO);
        //board_id를 가지고 commentcount +1 시키기
        Long board_id = commentDTO.getBoard_id();
        System.out.printf("board_id = " + board_id);
        boardService.commentCountUp(board_id);
        //commenet list 가져오기
        List<CommentDTO> commentDTOList = boardService.commentList(board_id);
        return commentDTOList;
    }

    @GetMapping("/search")
    public String search(@RequestParam("searchType")String searchType,@RequestParam("keyword")String keyword ,Model model){
        Map<String ,String> searchMap = new HashMap<>();
        searchMap.put("searchType",searchType);
        searchMap.put("keyword",keyword);
        List<BoardDTO> boardList = boardService.search(searchMap);
        model.addAttribute("boardList",boardList);
        return "/boardPage/board";
    }






}
