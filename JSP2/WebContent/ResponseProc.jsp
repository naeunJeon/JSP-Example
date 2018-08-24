<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

이 페이지는 로그인 정보가 넘어오는 페이지 입니다.
<%
	String id = request.getParameter("id");
	//response.sendRedirect("ResponseRedirect.jsp");
%>
<jsp:forward page="ResponseRedirect.jsp"></jsp:forward>

아이디 = <%=id %>
</body>
</html>