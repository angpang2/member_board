package com.its.board.service;

import com.its.board.dto.BoardDTO;
import com.its.board.dto.PageDTO;
import com.its.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
}


//
//    public List<BoardDTO> pagingList(int page) {
//        // page=1,0 ; page=2,3 ; page=3,6
//        int pagingStart = (page-1)* PagingConst.PAGE_LIMIT;
//        Map<String,Integer> pagingParams = new HashMap<>();
//        pagingParams.put("start",pagingStart);
//        pagingParams.put("limit",PagingConst.PAGE_LIMIT);
//        List<BoardDTO>pagingList = boardRepository.pagingList(pagingParams);
//        return pagingList;
//    }
//
//
//    public PageDTO pagingParam(int page) {
//        //전체 글 갯수 조회
//        int boardCount = boardRepository.boardCount();
//        //전체 페이지 갯수 계산
//        int maxPage = (int) (Math.ceil((double) boardCount / PagingConst.PAGE_LIMIT));
//        // 시작 페이지 값 계산 (1, 4, 7, 10)
//        int startPage = (((int)(Math.ceil((double) page / PagingConst.BLOCK_LIMIT))) - 1) * PagingConst.BLOCK_LIMIT + 1;
//        //끝 페이지 값 계산 (3, 6, 9 , 12)
//        int endPage = startPage + PagingConst.BLOCK_LIMIT - 1;
//        if(endPage>maxPage){
//            endPage = maxPage;
//        }
//
//        PageDTO pageDTO = new PageDTO();
//        pageDTO.setPage(page);
//        pageDTO.setMaxPage(maxPage);
//        pageDTO.setEndPage(endPage);
//        pageDTO.setStartPage(startPage);
//        return pageDTO;
//    }
