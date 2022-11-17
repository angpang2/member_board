package com.its.board.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class BoardDTO {
    private Long board_id;
    private String writer;
    private String title;
    private String content;
    private int boardHits = 0;
    private Timestamp regdate;
    private Timestamp updatedate;
    private Timestamp deleteddate;
    //
    private MultipartFile boardFile;
    //
    private String originalFileName;
    //
    private String storedFileName;
    //
    private Long member_id;
}
