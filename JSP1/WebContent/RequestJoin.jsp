<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h2>회원가입</h2>
	<form action="RequestJoinProc.jsp" method="post">
	<table width="500" border="1">
	<tr height="50">
		<td width="150" align="center">아이디</td>
		<td width="350" align="center"><input type="text" name="id" size="40" placeholder="id 입력하세요"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">패스워드</td>
		<td width="350" align="center"><input type="password" name="pass1" size="40"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">패스워드 확인</td>
		<td width="350" align="center"><input type="password" name="pass2" size="40" placeholder="숫자와 영문만 넣어주세요"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">이메일</td>
		<td width="350" align="center"><input type="email" name="email" size="40"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">전화번호</td>
		<td width="350" align="center"><input type="tel" name="tel" size="40"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">관심분야</td>
		<td width="350" align="center">
		<input type="checkbox" name="hobby" value="캠핑">캠핑&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="등산">등산&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="영화">영화&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="독서">독서&nbsp;&nbsp;
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center">직업</td>
		<td width="350" align="center">
		<select name="job">
		<option value="교사">교사</option>
		<option value="변호사">변호사</option>
		<option value="의사">의사</option>
		<option value="개발자">개발자</option>
		</select>
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center">나이</td>
		<td width="350" align="center">
		<input type="radio" name="age" value="10">10대&nbsp;&nbsp;
		<input type="radio" name="age" value="20">20대&nbsp;&nbsp;
		<input type="radio" name="age" value="30">30대&nbsp;&nbsp;
		<input type="radio" name="age" value="40">40대&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<td width="150" align="center">하고싶은 말</td>
		<td width="350" align="center">
		<textarea row="5" cols="40" name="info"></textarea>
	</tr>	
	<tr>
		<tr height="50">
		<td align="center" colspan="2">
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
		</td>
	</tr>		
	</table>
	</form>
</body>
</html>