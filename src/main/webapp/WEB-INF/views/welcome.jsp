<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오후 2:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="../../resources/css/ex.css">
</head>
<body>
<article class="complite">
  <h2>회원가입 완료</h2>

  <section>
    <h4>1.약관동의</h4>
    <h4>▸</h4>
    <h4>2.회원정보입력</h4>
    <h4>▸</h4>
    <h4>3.가입완료</h4>
  </section>

  <section>
    <span id="profile">


    </span>

    <h3>${model.nickname}님,회원가입이 완료되었습니다.</h3>

    <div>
      <h5>GIORDANO, concept1에서 제공하는 다양한
        상품과 <br>이벤트를 만나보세요.</h5>
    </div>

   <a href="/loginPage">로그인 후 이용하기</a>

  </section>
</article>

</body>
</html>
