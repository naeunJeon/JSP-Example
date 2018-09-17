<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<center>
<h2> 세션 로그인 처리 1 </h2>
<%
	// 사용자로부터 정보 읽어옴
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	// Session은 내장객체이므로 객체 생성안해도됨
	session.setAttribute("id", id);
	session.setAttribute("pass", pass);
	
	session.setMaxInactiveInterval(60*3);
	response.sendRedirect("SessionMain.jsp");
%>


</body>
</html>