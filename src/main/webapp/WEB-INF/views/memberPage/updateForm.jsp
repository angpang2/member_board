<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-18
  Time: 오전 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateForm</title>
</head>
<body>
<form action="/update" method="post">
    <input type="hidden" value="${sessionScope.member.member_id}" name="member_id">
    <table>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" value="${sessionScope.member.email}"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pw" value="${sessionScope.member.pw}"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="nickname" value="${sessionScope.member.nickname}"></td>
        </tr>
    </table>
    <input type="button" onclick="memberUpdate()" value="수정">
</form>


</body>
<script>
    function memberUpdate() {
        if (confirm("정말 수정하시겠습니까?")) {
            document.forms[0].submit();
        }
    }

</script>
</html>
