<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<!-- Top -->
	<table width="800">
		<tr height="100">
			<!-- 로고이미지 -->
			<td colspan="2" align="center" width="200">
			<img alt="" src="img/test2.jpg" width="200" height="100">
			</td>
			<td colspan="5" align="center">
			<font size="10"> 멍멍 캠핑 </font>
			</td>
		</tr>
		<tr height="50">
			<td align="center" width="110"> 텐트 </td>
			<td align="center" width="110"> 의자 </td>
			<td align="center" width="110"> 식기류 </td>
			<td align="center" width="110"> 침낭 </td>
			<td align="center" width="110"> 테이블 </td>
			<td align="center" width="110"> 화롯대 </td>
			<td align="center" width="140"> <%=request.getParameter("id") %> </td>
		</tr>
	</table>
</body>
</html>