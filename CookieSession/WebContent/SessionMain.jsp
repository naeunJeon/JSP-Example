<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
	//Center값을 변경해주기위해서 Request 객체를 이용해서 center값 가져옴
	String center = request.getParameter("center");
	//처음 실행하면 null이기때문에 null처리
	if(center == null){
		center = "Center.jsp";
	}
%>

<center>
	<table border="1" width="800">
		<!-- top -->
		<tr height="150">
			<td align="center" colspan="2">
			<jsp:include page="Top.jsp"/>
			</td>
		</tr>
		
		<!-- left -->
		<tr height="400">
			<td align="center" width="200">
			<jsp:include page="Left.jsp"/>
			</td>
		
		<!-- center -->
			<td align="center" width="600">
			<jsp:include page="<%=center %>"/>
			</td>
		</tr>
		
		<!-- bottom -->
		<tr height="100">
			<td align="center" colspan="2">
			<jsp:include page="Bottom.jsp"/>
			</td>
		</tr>
	</table>

</body>
</html>