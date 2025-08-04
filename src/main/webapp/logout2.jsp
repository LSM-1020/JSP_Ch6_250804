<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃->모든세션 삭제</title>
</head>
<body>
	<%
		session.invalidate(); //모든 세션 삭제
	%>
	
	<a href = "sessionInfo.jsp">로그인 유저 페이지 이동</a>
</body>
</html>