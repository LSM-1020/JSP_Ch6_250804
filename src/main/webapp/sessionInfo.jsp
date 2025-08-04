<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 모든 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인 하기</h2>
	<hr>
	<%
		Enumeration sessionEnum = session.getAttributeNames(); //세션의 모든 정보를 반환 -> 열거형으로 반환 Enumeraiton , while문으로만 뺄수있음
		
		while(sessionEnum.hasMoreElements()) { //다음꺼 있는지 확인
			String sName = sessionEnum.nextElement().toString();//nextElement로 빼주는 부분, 이걸 string으로 받아줌, Object클래스라 String으로 변환시켜줌
			String sValue = session.getAttribute(sName).toString();
			out.println(sName + ":" + sValue + "<br>");
		
		}
		String session_id = session.getId(); //접속한 브라우저별로 매칭되는 유니크한 ID값
		out.println("session의 고유 아이디:" + session_id); 
	%>
	
	<a href ="loginUser.jsp">로그인 유저 페이지 바로가기</a>
</body>
</html>