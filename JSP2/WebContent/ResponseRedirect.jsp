<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

ResponseRedirect.jsp 페이지 입니다.<br>
<%
	String id = request.getParameter("id");
	String phone = request.getParameter("phone");
%>
아이디 = <%= id %><br>
phone = <%= phone %>
</body>
</html>