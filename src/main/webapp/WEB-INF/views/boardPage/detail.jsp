<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-17
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<div class="container" id="save-form" itemid="comment-list" >
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
        <input type="hidden" name="writer" value="${sessionScope.member.nickname}" id="commentWriter">
        <input type="text" name="content" class="form-control" id="commentContents">
        <input type="button" onclick="commentWrite()" value="댓글달기" class="btn btn-primary">
    </form>
</div>
<%--댓글보기--%>
<div class="container" id="comment-list" style="width: 800px; margin-top: 10px;">
    <table class="table">
        <tr>
            <th>작성자</th>
            <th>내용</th>
            <th>작성시간</th>
        </tr>
        <c:forEach items="${commentList}" var="comment">
            <tr>
                <td>${comment.writer}</td>
                <td>${comment.content}</td>
                <td>${comment.regdate}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${comment.regdate}"></fmt:formatDate></td>
            </tr>
        </c:forEach>
    </table>
</div>
</div>



<div class="container" style="width: 800px; margin-top: 10px;">
    <input type="button" value="목록으로" onclick="location.href='/board'">
</div>


</body>
<script>
    const modify = () => {
        location.href = "/updateForm?board_id="+${board.board_id}
    }

    const boardDelete = () => {
      location.href = "/board/delete?board_id="+${board.board_id}
    }

    const commentWrite = () => {
        const content = document.getElementById("commentContents").value;
        const board_id = '${board.board_id}';
        if(${sessionScope.member.email != null}){
            const writer = '${sessionScope.member.nickname}'
            $.ajax({
                type: "post",
                url: "/comment/save",
                data: {
                    writer: writer,
                    content: content,
                    board_id: board_id
                },
                dataType: "json",
                success: function (commentList) {
                    console.log(commentList);
                    let output = "<table class='table'>";
                    output += "<th>작성자</th>";
                    output += "<th>내용</th>";
                    output += "<th>작성시간</th></tr>";
                    for(let i in commentList){
                        output += "<tr>";
                        output += "<td>"+commentList[i].writer+"</td>";
                        output += "<td>"+commentList[i].content+"</td>";
                        output += "<td>"+moment(commentList[i].regdate).format("YYYY-MM-DD HH:mm:ss")+"</td>";
                        output += "</tr>";
                    }
                    output += "</table>";
                    document.getElementById('comment-list').innerHTML = output;
                    document.getElementById('commentWriter').value='';
                    document.getElementById('commentContents').value='';
                },
                error: function () {
                    console.log("실패");
                }
            })
        }else {
            alert("로그인후 이용 가능합니다.")
            location.href="/login"
        }
    }





</script>



</html>
