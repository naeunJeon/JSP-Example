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

<!-- forward : request의 값을 유지시키고 싶거나 값을 임의적으로 변경하거나 할때 사용-->
<jsp:forward page="ResponseRedirect.jsp">
	<jsp:param value="mmmm" name="id"/>
	<jsp:param value="mmmm" name="phone"/>
</jsp:forward>

아이디 = <%=id %>
</body>
</html>