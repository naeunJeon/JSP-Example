<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<center>
<h2>회원정보보기</h2>
<%
	//post방식으로 데이터가 넘어올때 한글이 깨질수 있기에
	request.setCharacterEncoding("EUC-KR");
	//각종 사용자로부터 넘어온 데이터를 저장해줌
	String id = request.getParameter("id");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	//[]타입으로 리턴
	String[] hobby = request.getParameterValues("hobby");
	String job = request.getParameter("job");
	String age = request.getParameter("age");
	String info = request.getParameter("info");

%>
</body>
</html>