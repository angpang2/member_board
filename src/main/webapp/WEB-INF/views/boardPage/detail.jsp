<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-17
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
    <style>
        #save-form{
            width: 800px;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container" id="save-form" >
    <form action="/board/save" method="post" name="saveForm"  class="form-control" enctype="multipart/form-data">
        작성자  <input type="text" name="writer"  class="form-control" value="${board.writer}" readonly >
        제목  <input type="text" name="title"  class="form-control" value="${board.title}">
        내용   <textarea name="content" cols="30" rows="10" class="form-control">${board.content}</textarea>
        <c:if test="${file.filename != null}">
            <img src="${pageContext.request.contextPath}/upload/${file.filename}"
                 alt="" width="50" height="50">
        </c:if>
        <input type="submit" value="작성하기">
    </form>
</div>




</body>
</html>
