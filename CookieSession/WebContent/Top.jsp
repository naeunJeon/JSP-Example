<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
	String logout = request.getParameter("logout");
	if(logout != null){
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
	}
	//세션을 통하여 id를 읽어드림
	String id = (String)session.getAttribute("id");
	//로그인이 되어 있지 ㅇ낳다면 session값 null처리
	if(id == null){
		id = "손님";
	}
%>
<!-- Top -->
	<table width="800">
		<tr height="100">
			<!-- 로고이미지 -->
			<td colspan="2" align="center" width="200">
			<img alt="" src="img/test2.jpg" width="200" height="70">
			</td>
			<td colspan="5" align="center">
			<font size="10"> 멍멍 캠핑 </font>
			</td>
		</tr>
		<tr height="50">
			<td align="center" width="100"> 텐트 </td>
			<td align="center" width="100"> 의자 </td>
			<td align="center" width="100"> 식기류 </td>
			<td align="center" width="100"> 침낭 </td>
			<td align="center" width="100"> 테이블 </td>
			<td align="center" width="100"> 화롯대 </td>
			<td>
			<%
				if(id.equals("손님")){
			%>
				<%=id %>님  <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
			<% } else{ %>
				<%=id %>님  <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
			<% } %>
			</td>
		</tr>
	</table>
</body>
</html>