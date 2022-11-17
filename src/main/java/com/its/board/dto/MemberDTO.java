package com.its.board.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class MemberDTO {

        private Long member_id;
        private String email;
        private String pw;
        private String nickname;
        private MultipartFile memberFile;
        private String picture;


}
