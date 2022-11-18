<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-18
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
    <style>
        #save-form2{
            width: 800px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<form action="board/update" method="post">
<div class="container" id="save-form2">
    <input type="hidden" value="${board.board_id}" name="board_id">
  작성자  <input type="text" name="writer"  class="form-control" value="${board.writer}" readonly >
  제목  <input type="text" name="title"  class="form-control" value="${board.title}">
  내용   <textarea name="content" cols="30" rows="10" class="form-control">${board.content}</textarea>
    <input type="submit"value="수정하기">
</div>
</form>

</body>
</html>
