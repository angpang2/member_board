<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-17
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>board</title>
    <style>
        /* UI Object */
        .tbl_type,.tbl_type th,.tbl_type td{border:0}
        .tbl_type a{color:#383838;text-decoration:none}
        .tbl_type{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
        .tbl_type caption,.tbl_type .frm label{display:none}
        .tbl_type th{padding:5px 0 4px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:18px;vertical-align:top}
        .tbl_type td{padding:8px 0 5px;border-bottom:solid 1px #d2d2d2;text-align:center}
        .tbl_type .frm{padding:0;text-align:center}
        .tbl_type .frm input{margin:0}
        .tbl_type .num,.tbl_type .date,.tbl_type .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
        .tbl_type .title{text-align:left}
        .tbl_type .title .pic,.tbl_type .title .new{margin:0 0 2px;vertical-align:middle}
        .tbl_type tr.reply .title a{padding-left:12px;background:url(img/ic_reply.gif) 0 1px no-repeat}
        .tbl_type tr.reply td a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
        /* //UI Object */
    </style>
</head>
<body>
<!-- UI Object -->
<table cellspacing="0" border="1" summary="게시판의 글제목 리스트" class="tbl_type">
    <caption>게시판 리스트</caption>
    <colgroup>
        <col width="30"><col width="80"><col>
        <col width="115"><col width="85"><col width="60">
    </colgroup>
    <thead>
    <tr>
        <th scope="col">&nbsp;</th>
        <th scope="col">No</th>
        <th scope="col">제목</th>
        <th scope="col">글쓴이</th>
        <th scope="col">날짜</th>
        <th scope="col">조회수</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="frm"><input type="checkbox" name="" id="chk_sel" value=""><label for="chk_sel">선택</label></td>
        <td class="num">10</td>
        <td class="title"><a href="#">새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판 글쓰기</a></td>
        <td><a href="#">네이버맨</a></td>
        <td class="date">2008/02/14</td>
        <td class="hit">1234</td>
    </tr>
    <tr class="reply">
        <td class="frm"><input type="checkbox" name="" id="chk_sel2" value=""><label for="chk_sel2">선택</label></td>
        <td class="num">&nbsp;</td>
        <td class="title" style="padding-left:10px;"><a href="#">블로그 개편 답글</a></td>
        <td><a href="#">네이버맨</a></td>
        <td class="date">2008/02/14</td>
        <td class="hit">1234</td>
    </tr>
    <c:forEach items="${boardList}" var="board">
        <tr>
        <tr>
            <td class="frm"><input type="checkbox" name="" value=""><label for="chk_sel10">선택</label></td>
            <td class="num">${board.board_id}</td>
            <td class="title"><a href="#">${board.title}</a></td>
            <td><a href="#">${board.writer}</a></td>
            <td class="date">${board.regdate}</td>
            <td class="hit">12345</td>
        </tr>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div>
    <ui>
        <li>
            <input type="button" value="글쓰기" onclick="writing()">
        </li>
    </ui>
</div>

<div class="container">
    <ul class="pagination justify-content-center">
        <c:choose>
            <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
        <c:when test="${paging.page<=1}">
        <li class="page-item disabled">
            <a class="page-link">[이전]</a>
        </li>
        </c:when>
            <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
        <c:otherwise>
        <li class="page-item">
            <a class="page-link" href="/board?page=${paging.page-1}">[이전]</a>
        </li>
        </c:otherwise>
        </c:choose>

        <%--  for(int i=startPage; i<=endPage; i++)      --%>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
        <c:choose>
            <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
        <c:when test="${i eq paging.page}">
        <li class="page-item active">
            <a class="page-link">${i}</a>
        </li>
        </c:when>

        <c:otherwise>
        <li class="page-item">
            <a class="page-link" href="/board?page=${i}">${i}</a>
        </li>
        </c:otherwise>
        </c:choose>
        </c:forEach>

        <c:choose>
        <c:when test="${paging.page>=paging.maxPage}">
        <li class="page-item disabled">
            <a class="page-link">[다음]</a>
        </li>
        </c:when>
        <c:otherwise>
        <li class="page-item">
            <a class="page-link" href="/board?page=${paging.page+1}">[다음]</a>
        </li>
        </c:otherwise>
        </c:choose>




</body>
<script>
    const writing = () => {
        if(${sessionScope.member.email != null}){
            location.href = "/board/saveForm"
        }else {
            alert("로그인후 이용바랍니다")
        }


    }


</script>
</html>
