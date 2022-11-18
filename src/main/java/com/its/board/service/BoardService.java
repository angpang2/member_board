package com.its.board.service;

import com.its.board.dto.BoardDTO;
import com.its.board.dto.CommentDTO;
import com.its.board.dto.FileDTO;
import com.its.board.dto.PageDTO;
import com.its.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;
    public void boardSave(BoardDTO boardDTO) throws IOException {
        if(!boardDTO.getBoardFile().isEmpty()) {
            MultipartFile boardFile = boardDTO.getBoardFile();
            String originalFilename = boardFile.getOriginalFilename();
            String storedFileName = System.currentTimeMillis() + "-" + originalFilename;
            String savePath = "D:\\spring_img\\" + storedFileName;
            boardFile.transferTo(new File(savePath));
            boardRepository.boardSave(boardDTO);
            BoardDTO result = boardRepository.boardSelect(boardDTO);
            result.setFilename(storedFileName);
            System.out.println("게시글 저장후 결과값"+result);
            boardRepository.boardsaveFile(result);
        }else {
            boardRepository.boardSave(boardDTO);
        }





    }

    public List<BoardDTO> boardList(PageDTO pageDTO) {
       int page = pageDTO.getPage();
        int start = (page-1)* pageDTO.getPAGE_LIMIT();
        int limit = pageDTO.getPAGE_LIMIT();
        pageDTO.setStart(start);
        pageDTO.setPAGE_LIMIT(limit);
       return boardRepository.boardList(pageDTO);
    }

    public PageDTO boardPage(PageDTO pageDTO) {
        //전체 글 갯수 조회
        int boardCount = boardRepository.boardCount();
        //필요 페이지 계산
        int maxPage = (int)(Math.ceil((double)boardCount / pageDTO.getPAGE_LIMIT()));
        //시작 페이지 값 계산
        int startPage = (((int)(Math.ceil((double) pageDTO.getPage() / pageDTO.getBLOCK_LIMIT()))) - 1) * pageDTO.getBLOCK_LIMIT() + 1;
        //끝 페이지 값 계산
        int endPage = startPage + pageDTO.getBLOCK_LIMIT() - 1;
        if(endPage>maxPage){
            endPage = maxPage;
        }
        pageDTO.setMaxPage(maxPage);
        pageDTO.setEndPage(endPage);
        pageDTO.setStartPage(startPage);
        return pageDTO;
    }

    public BoardDTO boardDetail(Long board_id) {
        return boardRepository.boardDetail(board_id);
    }

    public FileDTO fileCheck(Long board_id) {
        return boardRepository.fileCheck(board_id);
    }

    public void boardUpdate(BoardDTO boardDTO) {
        boardRepository.boardUpdate(boardDTO);
    }

    public void boardDelete(Long board_id) {
        boardRepository.boardDelete(board_id);
    }


    public void commentSave(CommentDTO commentDTO) {
        boardRepository.commentSave(commentDTO);

    }

    public List<CommentDTO> commentList(Long board_id) {
        return boardRepository.commentList(board_id);

    }

    public int commentCount(Long board_id) {
        return boardRepository.commentCount(board_id);

    }

    public void commentCountUp(Long board_id) {
        boardRepository.commentCountUp(board_id);

    }

    public void boardUp(Long board_id) {
        boardRepository.boardUp(board_id);


    }
}




