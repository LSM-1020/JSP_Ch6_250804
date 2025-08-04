<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
	
		String mid= request.getParameter("loginId");
		String mpw= request.getParameter("loginPw");
	
		if(mid.equals("tiger") && mpw.equals("12345")) { //참이면 로그인 성공
			session.setAttribute("sessionFlag", "yes");
			session.setAttribute("memberID", mid);//(세션 이름(작명),세션에 저장할 로그인할 유저의 아이디값)
			long current_loginTime = System.currentTimeMillis(); //현재 시간
			session.setAttribute("loginTime", current_loginTime);
			response.sendRedirect("loginSuccess.jsp"); //강제 페이지 이동
			
		}else {
			System.out.println("로그인 실패");
			response.sendRedirect("login.jsp");//강제 페이지 이동-> 로그인 실패시 로그인 페이지로 이동
		}
		
		
	%>
	<a href ="sessionKeep.jsp" >세션 유지 시간 정보 보기</a>
</body>
</html>