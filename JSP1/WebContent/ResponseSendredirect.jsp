<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>로그인페이지</h2>
	<form action="ResponseLoginProc.jsp" method="post">
		<table width="400" border="1">
			<tr height=200>
				<td align="Center" width="150">아이디</td>
				<td align="Left" width="250"><input type="text" name="id">
				</td>
			</tr>
			<tr height=200>
				<td align="Center" width="150">패스워드</td>
				<td align="Left" width="250"><input type="password" name="pass">
				</td>
			</tr>
			<tr height=60>
				<td colspan="2" align="center">
				<input type="submit" value="전송">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>