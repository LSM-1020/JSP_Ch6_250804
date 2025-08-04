<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유효 시간</title>
</head>
<body>
	<%
		int s_time = session.getMaxInactiveInterval();//현재 세션 유효시간 가져오기 (초단위)
		out.println("세션 유효시간:" +  s_time + "초"+"<br>"); 
		out.println("세션 유효시간:" +  (s_time/60) + "분");
		
		out.println("<br>");
		
		session.setMaxInactiveInterval(60*5); //세션 유효시간 설정 (초단위)
		s_time = session.getMaxInactiveInterval();
		out.println("세션 유효시간:" +  s_time + "초"+"<br>"); 
		out.println("세션 유효시간:" +  (s_time/60) + "분");
	%>
</body>
</html>