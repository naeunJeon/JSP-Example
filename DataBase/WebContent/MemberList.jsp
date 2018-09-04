<%@page import="model.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<!-- 1.데이터베이스에서 모든회원의 정보를 가져옴
	 2.table태그를 이용하여 화면에 회원들의 정보를 출력 -->
<%
	MemberDao mdao = new MemberDao();
	//회원들의 정보가 얼마나 저장되어있는지 모르기에 가변길이인 ArrayList를 이용하여 데이터를 저장해줌
	ArrayList<MemberBean> arr = mdao.allSelectMember();
%>

<center>
<h2>모든 회원 보기</h2>

<table width="800" border="1">
	<tr height="50">
	<td align="center" width="150"> 아이디 </td>
	<td align="center" width="250"> 이메일 </td>
	<td align="center" width="200"> 전화번호 </td>
	<td align="center" width="200"> 취미 </td>
	</tr>
	<%
		for(int i=0; i<arr.size(); i++){
			MemberBean bean = arr.get(i);
		
	%>
	<tr height="50">
	<td align="center" width="150"> <%= bean.getId() %></td>
	<td align="center" width="250"> <%= bean.getEmail() %> </td>
	<td align="center" width="200"> <%= bean.getTel() %> </td>
	<td align="center" width="200"> <%= bean.getHobby() %> </td>
	</tr>
	
	<%
		}
	%>
</table>
</body>
</html>