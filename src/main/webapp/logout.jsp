<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
	session.removeAttribute("memberID"); //세션에 없는 memberID를 삭제

%>
<a href = "sessionInfo.jsp">sessionInfo바로가기</a>

</body>
</html>