<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

ResponseRedirect.jsp ������ �Դϴ�.<br>
<%
	String id = request.getParameter("id");
	String phone = request.getParameter("phone");
%>
���̵� = <%= id %><br>
phone = <%= phone %>
</body>
</html>