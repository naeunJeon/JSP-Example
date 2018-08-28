<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<center>
	<h2> 회원 정보 보기 </h2>

	<!-- request로 넘어온 데이터를 자바빈즈랑 맵핑 시켜주는 useBean -->
	<!-- 객체생성 MemberBean mbean = new MemberBean() -->
	<jsp:useBean id="mbean" class="bean.MemberBean">
	<!-- Jsp 내용을 자바빚 클래스(MemberBean)에 데이터를 맵핑(넣어줌) -->
		<jsp:setProperty name="mbean" property="*"/><!-- 자동으로 모두 맵핑시켜주세요 라는  -->
	</jsp:useBean>

	<h2> 당신의 아이디는 <jsp:getProperty property="id" name="mbean"/> </h2>
	<h2> 당신의 이메일 <jsp:getProperty property="email" name="mbean"/> </h2>
	<h2> 당신의 전화번호  <% mbean.getTel(); %> </h2>
</body>
</html>