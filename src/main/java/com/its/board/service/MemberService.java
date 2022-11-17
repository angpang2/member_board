package com.its.board.service;

import com.its.board.dto.MemberDTO;
import com.its.board.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public MemberDTO save(MemberDTO memberDTO) throws IOException {
        if(memberDTO.getMemberFile().isEmpty()){
            memberRepository.save(memberDTO);
            return memberDTO;
        }else {
            MultipartFile memberFile = memberDTO.getMemberFile();
            String originalFilename = memberFile.getOriginalFilename();
            String storedFileName = System.currentTimeMillis()+"-"+originalFilename;
            memberDTO.setPicture(storedFileName);
            String savePath = "D:\\spring_img\\" + storedFileName;
            memberFile.transferTo(new File(savePath));
            memberRepository.save(memberDTO);
            return memberDTO;
        }
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return memberRepository.login(memberDTO);
    }

    public MemberDTO emailCheck(String email) {
        return memberRepository.emailCheck(email);

    }


    public MemberDTO nicknameCheck(String nickname) {
        return memberRepository.nicknameCheck(nickname);
    }
}
