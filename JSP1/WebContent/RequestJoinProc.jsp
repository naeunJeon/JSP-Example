<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<center>
<h2>ȸ����������</h2>
<%
	//post������� �����Ͱ� �Ѿ�ö� �ѱ��� ������ �ֱ⿡
	request.setCharacterEncoding("EUC-KR");
	//���� ����ڷκ��� �Ѿ�� �����͸� ��������
	String id = request.getParameter("id");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	//[]Ÿ������ ����
	String[] hobby = request.getParameterValues("hobby");
	String job = request.getParameter("job");
	String age = request.getParameter("age");
	String info = request.getParameter("info");

%>
</body>
</html>