<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

ResponseRedirect.jsp 페이지 입니다.
<%
	String id = request.getParameter("id");
%>
아이디 = <%=id %>
</body>
</html>