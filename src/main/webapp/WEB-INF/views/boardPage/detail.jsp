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
        작성자  <input type="text" name="writer"  class="form-control" value="${board.writer}" readonly >
        제목  <input type="text" name="title"  class="form-control" value="${board.title}" readonly>
        내용   <textarea name="content" cols="30" rows="10" class="form-control" readonly>${board.content}</textarea>
        <c:if test="${file.filename != null}">
            <img src="${pageContext.request.contextPath}/upload/${file.filename}"
                 alt="" width="50" height="50">
        </c:if>
        <c:if test="${sessionScope.member.member_id !=null}">
            <input type="button" value="수정하기" onclick="modify()">
            <input type="button" value="삭제하기" onclick="boardDelete()">
        </c:if>
</div>
<%--댓글달기--%>
<div class="container" id="comment-form" style="width: 800px; margin-top: 10px;">
    <form action="/board/comment" method="post">
        <input type="hidden" name="board_id" value="${board.board_id}">
        <input type="hidden" name="member_id" value="${sessionScope.member.member_id}">
        <input type="hidden" name="writer" value="${sessionScope.member.nickname}">
        <input type="text" name="content" class="form-control">
        <input type="submit" value="댓글달기" class="btn btn-primary">
    </form>
</div>
<%--댓글보기--%>
<div class="container" id="comment-list" style="width: 800px; margin-top: 10px;">
    <c:forEach var="comment" items="${commentList}">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">${comment.writer}</h3>
            </div>
            <div class="panel-body">
                ${comment.content}
            </div>
        </div>
    </c:forEach>
</div>




</body>
<script>
    const modify = () => {
        location.href = "/updateForm?board_id="+${board.board_id}
    }

    const boardDelete = () => {
      location.href = "/board/delete?board_id="+${board.board_id}
    }

</script>



</html>
