<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>결과 창</title>
	</head>
	<body>
		<h5>개인정보 출력</h5>
		<p>
		이름 : <%=session.getAttribute("name") %><br>
		아이디 : <%= session.getAttribute("telnumber") %>
	</body>
</html>