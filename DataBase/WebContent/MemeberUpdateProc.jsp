<%@page import="model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="bean" class="model.MemberBean">
		<jsp:setProperty property="*" name="bean"/>
	</jsp:useBean>
	
<%
	String id = request.getParameter("id");
	MemberDao mdao = new MemberDao();
	
	String pass = mdao.getPass(id);
	if(bean.getPass1().equals(pass)){
		mdao.updateMember(bean);
		response.sendRedirect("MemberList.jsp");
	}else{
%>
		<script type="text/javascript">
			alert("패스워드를 확인하세요");
			history.go(-1);
		</script>
<%
	}
%>
</body>
</html>