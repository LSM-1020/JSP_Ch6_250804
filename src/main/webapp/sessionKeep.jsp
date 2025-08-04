<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유지시간</title>
</head>
<body>
	<%
		String session_id = session.getId();
		long last_time = session.getLastAccessedTime();//마지막 세션 접근 시간(밀리세컨드)
		long start_time = session.getCreationTime(); //세션이 생성된 시간 (밀리세컨드)
		long keep_time = (last_time - start_time) / 1000; //초단위 출력
		out.println("세션아아디 :" + session_id + "<br>");
		out.println("세션지속시간 : " + keep_time +"초");
		out.println("<hr>");
		
		long current_time = System.currentTimeMillis();
		
		long keep_time2 = (current_time - start_time)/1000;
		out.println("세션생성후 경과 시간" + keep_time2 +"초");
		out.println("<hr>");
		
		long loginTime1 = (long) session.getAttribute("loginTime");
		long keep_time3 = (current_time - loginTime1) / 1000;
		//로그인 성공 후 경과시간
		out.println("로그인 성공 후 경과 시간" + keep_time3+"초");
		
		
		
	%>
</body>
</html>