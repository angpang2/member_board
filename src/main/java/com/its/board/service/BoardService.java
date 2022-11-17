package com.its.board.service;

import com.its.board.dto.BoardDTO;
import com.its.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

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
}
