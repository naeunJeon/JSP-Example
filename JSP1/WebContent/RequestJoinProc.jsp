<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<center>
<h2>회원정보보기</h2>
<%
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

	if(!pass1.equals(pass2)){
%>
	<script type="text/javascript">
		alert("비밀번호가 틀립니다.")	;	// 경고창
		history.go(-1); 			// 이전페이지로 이동
	</script>
<%
	}
%>

<table width="500" border="1">
	<tr height="50">
		<td width="150" align="center">아이디</td>
		<td width="350" align="center"><%= id %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">이메일</td>
		<td width="350" align="center"><%= email %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">전화번호</td>
		<td width="350" align="center"><%= tel %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">관심분야</td>
		<td width="350" align="center">
		<%
			for(int i=0; i<hobby.length; i++){
				out.write(hobby[i] + " ");
			}
		%>
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center">직업</td>
		<td width="350" align="center"><%= job %></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">연령</td>
		<td width="350" align="center"><%= age %></td>
	</tr>
		<tr height="50">
		<td width="150" align="center">하고싶은말</td>
		<td width="350" align="center"><%= info %></td>
	</tr>
</table>

</body>
</html>