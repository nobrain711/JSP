<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>jsp:forward와 jsp:param 태그 예제</title>
	</head>
	<body bgcolor="red">
		<h4>[jsp:forward 와 jsp:param 태그에 대한 예제]</h4>
		<hr>이 파일은 ex08-04.jsp입니다. 배경색은 빨간색 입니다.
		<jsp:forward page="ex08-04-1.jsp">
			<jsp:param name="url" value="http://localhost:8080/jspStudy2105083/ch08/ex08-04.jsp"/>
			<jsp:param name="memo" value="JSP/Servlet 마스터하여 웹프로그래머가 되자!!" />
		</jsp:forward>
	</body>
</html>