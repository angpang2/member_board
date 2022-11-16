<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오후 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/saveFrom.css">
    <script src="/resources/js/jqury.js"></script>

</head>
<body>
<form enctype="multipart/form-data" method="post" action="/member/save" class="joinForm">
    <h2>회원가입</h2>
    <div class="textForm input-group-sm mb-3">
        <input name="email" type="text" class="id" placeholder="이메일" id="email">
        <input type="button" value="이메일중복체크" onclick="emailCheck()">
    </div>
    <div class="textForm">
        <input name="pw" type="password" class="pw" placeholder="비밀번호" id="pw">
    </div>
    <div class="textForm">
        <input name="pwConfirm" type="password" class="pw" placeholder="비밀번호 확인" id="pw2" onblur="passCheck()">
        <span id="pass_result"></span>
    </div>
    <div class="textForm">
        <input name="nickname" type="text" class="name" placeholder="닉네임" onblur="nicknameCheck()" id="nickname">
        <span id="nickname_result"></span>
    </div>
    <div class="textForm">
        <input name="memberFile" type="file">
    </div>
    <input type="submit" class="btn" value="J O I N" disabled id="submit1">
</form>

</body>
<script>
    const emailCheck = () => {
        const memberEmail = document.getElementById("email").value;
        $.ajax({
            type: "get",
            url: "/emailCheck",
            data: {
                email: memberEmail
            },
            dataType: "text",
            success: function (result) {
                console.log("성공");
                console.log(result);
                if (result == "yes") {
                    $("#submit1").removeAttr("disabled");
                    alert("회원가입가능")

                } else {
                    $("#submit1").attr("disabled", "disabled");
                    alert("이미존재하는 이메일 입니다.")

                }

            },
            error: function () {
                console.log("실패")
            }

        })
    }


    const passCheck = () => {
        const pass1 = document.getElementById("pw").value;
        const pass2 = document.getElementById("pw2").value;
        const pass_result = document.getElementById("pass_result");
        if(pass1 == pass2){
            pass_result.innerHTML = "비밀번호가 일치합니다."
            pass_result.style.color = "green";
            $("#submit1").removeAttr("disabled");
        }else{
            pass_result.innerHTML = "비밀번호를 확인해주세요"
            pass_result.style.color = "red";
            $("#submit1").attr("disabled", "disabled");

        }




    }

    const nicknameCheck = () => {
        const name = document.getElementById("nickname").value;
        const nickname_result = document.getElementById("nickname_result");
        console.log(name)
        $.ajax({
            type:"get",
            url:"/nicknameCheck",
            data: {
                nickname : name
            },
            dataType: "text",
            success:function (result) {
                if(result == "yes"){
                    nickname_result.innerHTML = "사용할수있는 닉네임"
                    nickname_result.style.color = "green";
                    $("#submit1").removeAttr("disabled");
                }else {
                    nickname_result.innerHTML = "이미 사용중인 닉네임"
                    nickname_result.style.color = "red";
                    $("#submit1").attr("disabled", "disabled");
                }

            },
            error:function (result){

            }
        })
    }






</script>
</html>
