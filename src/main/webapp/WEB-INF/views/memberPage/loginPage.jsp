<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오후 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/login.css">
    <script src="/resources/js/jqury.js"></script>
</head>
<body>
<div class="login">
    <h1>Login</h1>

        <div class="container" id="login-form">
        <input type="text" name="email" placeholder="UserEmail" required="required" id="email"/>
        <input type="password" name="pw" placeholder="Password" required="required" id="pw"/>
            <input type="button" class="btn btn-primary btn-block btn-large" onclick="loginCheck()" value="로그인">
        </div>

</div>
</body>
<script>
    const loginCheck = () => {
        const memberEmail = document.getElementById("email").value
        const memberPassword = document.getElementById("pw").value
        $.ajax({
            type:"post",
            url:"/member/login",
            data:{
                email : memberEmail,
                pw : memberPassword
            },
            dataType: "text",

            success : function (result){
                if(result == "ok"){
                    alert("로그인성공")
                    location.href = "../../..";
                }else {
                    alert("아이디 또는 비밀번호를 다시확인해주세요")
                }

            },
            error : function (){
                alert("아이디 또는 비밀번호를 다시확인해주세요")
            }

        })

    }
</script>
</html>
