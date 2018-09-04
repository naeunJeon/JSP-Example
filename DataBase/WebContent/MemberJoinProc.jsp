<%@page import="model.MemberDao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	request.setCharacterEncoding("utf-8");

	//취미 부분은 별도로 읽어드려 다시 빈클래스에 저장
	String[] hobby = request.getParameterValues("hobby");
	//배열의 있는 내용르 하나의 스트링으로 저장
	String texthobby = "";
	for(int i=0; i<hobby.length; i++){
		texthobby += hobby[i]+ " ";
	}

%>

<!-- useBean을 이용하여 한꺼번에 데이터를 받아옴 -->
<jsp:useBean id="mbean" class="model.MemberBean">
	<jsp:setProperty name="mbean" property="*"/>	<!-- 맵핑시키시오 -->
</jsp:useBean>

<%
	mbean.setHobby(texthobby); //기존 취미는 주소번지가 저장되기때문에 위에 배열의 내용을 하나의 스트링으로 저장한 변수를 다시입력
	
	//데이터베이스클래스 객체 생성
	MemberDao mdao = new MemberDao();
	mdao.insertMember(mbean);
%>

 디비접속 완료
 
</body>
</html>