<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인한 유저 페이지</title>
</head>
<body>
<%
	String sid = (String)session.getAttribute("memberID");

	if(sid != null) { //참-> 로그인한 상태, 거짓-> 로그인 하지 않은 상태
		out.println("로그인한 사람에게만 보이는 글");
		out.println(sid + "님 환영합니다");
	}else {
		out.println("로그인 안한 사람에게만 보이는 글");
	}

%>

<a href = "sessionKeep.jsp">세션 유지시간 바로가기</a>
<a href = "sessionInfo.jsp">세션정보 바로가기</a>
<a href = "logout2.jsp">모든세션 삭제 바로가기</a>
</body>
</html>