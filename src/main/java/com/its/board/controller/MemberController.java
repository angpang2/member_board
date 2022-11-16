package com.its.board.controller;

import com.its.board.dto.MemberDTO;
import com.its.board.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/member/save")
    public String saveForm(){
        return "/saveForm";
    }

    @GetMapping("/loginPage")
    public String loginPage(){
        return "/loginPage";
    }

    @PostMapping("/member/save")
    public String save(@ModelAttribute MemberDTO memberDTO, Model model) throws IOException {
       MemberDTO result = memberService.save(memberDTO);
        model.addAttribute("model",result);
        System.out.println("memberDTO = " + memberDTO + ", model = " + model);
        return "/welcome";
    }

    @PostMapping("/member/login")
    public @ResponseBody String loginCheck(@ModelAttribute MemberDTO memberDTO , HttpSession session){
        MemberDTO result = memberService.login(memberDTO);
        System.out.println("memberDTO = " + memberDTO + ", session = " + session);
        if(result != null){
            session.setAttribute("member",result);
            return "ok";
        }else {
            return "no";
        }

    }

    @GetMapping("/emailCheck")
    public @ResponseBody String emailCheck(@RequestParam("email")String email){
        System.out.println(email);
        MemberDTO result =memberService.emailCheck(email);
        System.out.println(result);
        if(result==null){
            return "yes";
        }else {
            return "no";
        }
    }

    @GetMapping("/nicknameCheck")
    public @ResponseBody String nicknameCheck(@RequestParam("nickname")String nickname){
        System.out.println("nickname = " + nickname);
        MemberDTO result = memberService.nicknameCheck(nickname);
        if (result==null){
            return "yes";
        }else {
            return "no";
        }
    }







}
