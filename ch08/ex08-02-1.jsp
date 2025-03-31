<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="ch08.LoginBean"%>
    
<jsp:useBean id="loginBean" class="ch08.LoginBean" scope="page" />
	<jsp:setProperty property="id" name="loginBean"/>
	<jsp:setProperty property="pw" name="loginBean"/>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login 자바빈 예제</title>
	</head>
	<body>
		<h4> 로그인 정보</h4>
		아 이 디 : <%= loginBean.getId() %><p>
		비밀번호 : <%= loginBean.getPw() %><p>
	</body>
</html>