package com.its.board.dto;
import lombok.*;
import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class FileDTO {
    public Long file_id;
    public Long board_id;
    public String filename;
    private Timestamp regdate;
}
