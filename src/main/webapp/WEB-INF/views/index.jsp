<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-14
  Time: 오후 3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Web Shop Page</title>

    <!-- 외부 스타일시트 적용 -->
    <link rel="stylesheet" href="../../resources/css/bootstrap.css">
   <link rel="stylesheet" href="../../resources/css/index.css">

</head>
<body>
<header>
    <h1>
        <a href="index.html">Web Shop</a>
    </h1>
</header>
<nav>
    <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="index.html">About Us</a></li>
        <li><a href="index.html">News</a></li>
        <li><a href="index.html">My Account</a></li>
        <li><a href="index.html">Contacts</a></li>
    </ul>
</nav>
<aside id="left">
    <h4>카테고리</h4>
    <ul>
        <li><a href="#" target="iframe1">컴퓨터</a></li>
        <li><a href="#" target="iframe1">의류</a></li>
        <li><a href="#" target="iframe1">음악</a></li>
        <li><a href="#" target="iframe1">영화</a></li>
        <li><a href="#" target="iframe1">스포츠</a></li>
        <li><a href="#" target="iframe1">레저</a></li>
        <li><a href="#" target="iframe1">가구/인테리어</a></li>
        <li><a href="#" target="iframe1">식품</a></li>
    </ul>
</aside>
<section id="main">
    <article>
        <%--        <iframe name="iframe1" src="computer.html" frameborder="0" width="450" height="300"></iframe>--%>
    </article>
</section>
<aside id="right">
    <div id="mainProfile">
    </div>
            <div id="login">
                <h4>Log In</h4>
                <form action="#" method="POST">
                    아이디
                    <input type="text" name="memberId"><br>
                    패스워드
                    <input type="password" name="memberPass" ><br>
                    <input type="submit" value="로그인">
                    <a href="/member/save" target="_blank">회원가입</a>
                    <a href="/loginPage">비밀번호 분실</a>
                </form>
            </div>


</aside>
<footer>
    Copyright & copy; 2019 mrhi
</footer>

</body>


</html>
