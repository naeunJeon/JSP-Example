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
	
	String id = "root";
	String pass = "12Sqecd34!";
	String url = "jdbc:mysql://localhost:3306/test";

	try{
		//1.해당 데이터 베이스를 사용한다고 선언
		Class.forName("com.mysql.jdbc.Driver");
		//2.해당 데이터 베이스에 접속
		Connection conn = DriverManager.getConnection(url, id, pass);
		String sql = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?,?)";
		/* PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby());
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge());
		pstmt.setString(8, mbean.getInfo());
		 */
	}catch(Exception e){
		e.printStackTrace();
	}
%>

 디비접속 완료
 
</body>
</html>