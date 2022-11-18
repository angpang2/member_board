package com.its.board.repository;

import com.its.board.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public void save(MemberDTO memberDTO) {
        sql.insert("Member.save",memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO result = sql.selectOne("Member.login",memberDTO);
        return result;

    }

    public MemberDTO emailCheck(String email) {
        MemberDTO result = sql.selectOne("Member.emailCheck",email);
        return result;

    }


    public MemberDTO nicknameCheck(String nickname) {
        return sql.selectOne("Member.nicknameCheck",nickname);
    }

    public void update(MemberDTO memberDTO) {
        System.out.println("리파지토리memberDTO = " + memberDTO);
        sql.selectOne("Member.update",memberDTO);
    }
}
