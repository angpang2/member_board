<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-17
  Time: 오전 10:02
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
    <input type="hidden" value="${sessionScope.member.member_id}" name="member_id">
    작성자  <input type="text" name="writer"  class="form-control" value="${sessionScope.member.nickname}" readonly >
    제목  <input type="text" name="title"  class="form-control" >
    내용   <textarea name="content" cols="30" rows="10" class="form-control"></textarea>
    <input type="file" class="form-control" name="boardFile">
    <input type="submit" value="작성하기">
  </form>
</div>

</body>


<script>
  const boardSave = () => {
    document.up.submit();
  }

</script>


</html>
