<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
	//사용자컴퓨터의 저장소로부터 쿠키값을 읽어드림 - 몇개인지 모르기에 배열을 이용하여 쿠키값을 저장

Cookie[] cookies = request.getCookies();

String id = "";

//쿠키값이 없을수도 있기에 null 처리

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("id")) {
				id = cookies[i].getValue();
				break;
			}
		}
	}
%>


<center>
<h2> 쿠키 로그인 </h2>
<form action="CookieLoginProc.jsp" method="post">
	<table width="400" border=1>
		<tr>
			<td width="150"> 아이디 </td>
			<td width="250"> <input type="text" name="id" value="<%= id %>"> </td>
		</tr>
		<tr>
			<td width="150"> 패스워드 </td>
			<td width="250"> <input type="password" name="pass"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> <input type="checkbox" name="save" value="1"> 아이디 저장 </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> <input type="submit" value="login"> </td>
		</tr>
	</table>
</form>

</body>
</html>