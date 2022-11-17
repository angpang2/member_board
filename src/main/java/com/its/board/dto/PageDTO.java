package com.its.board.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class PageDTO {
    private int page; //현재 페이지
    private int maxPage; //필요 페이지
    private int startPage; // 시작 페이지
    private int endPage; // 끝 페이지
    public static int PAGE_LIMIT = 5; //표시페이지
    public static final int BLOCK_LIMIT = 5; //하단 블록
}
