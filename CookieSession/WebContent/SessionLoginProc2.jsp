<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<center>
<h2> 세션 로그인 처리 2 </h2>
<%
	String id = (String)session.getAttribute("id");
	String pass = (String)session.getAttribute("pass");
%>

<h2> 당신의 id는 <%= id %> password는 <%= pass %> 입니다. </h2>
</body>
</html>