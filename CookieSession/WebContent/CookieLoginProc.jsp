<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
	String save = request.getParameter("save");
	//아이디 값을 저장
	String id = request.getParameter("id");
	
	
	if(save != null){
	//쿠키를 사용하려면 쿠키클래스를 생성해주어야함
	Cookie cookie = new Cookie("id", id);	//첫번째 String 키 값을 적어줌, 두번째는 value값을 넣어줌
	//유효시간 설정
	cookie.setMaxAge(60*10);	//10분간 유효
	//사용자에게 쿠키 값을 넣어줌
	response.addCookie(cookie);
	out.write("쿠키 생성완료");
	}
%>
</body>
</html>