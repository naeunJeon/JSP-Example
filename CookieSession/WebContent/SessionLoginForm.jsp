<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<center>
<h2> 세션 로그인 </h2>
<form action="SessionLoginProc.jsp" method="post">
	<table width="400" border=1>
		<tr>
			<td width="150"> 아이디 </td>
			<td width="250"> <input type="text" name="id"> </td>
		</tr>
		<tr>
			<td width="150"> 패스워드 </td>
			<td width="250"> <input type="password" name="pass"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center"> <input type="submit" value="login"> </td>
		</tr>
	</table>
</form>

</body>
</html>