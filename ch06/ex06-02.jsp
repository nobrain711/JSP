<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>로드인 입력 화면에서</h3>
		전송된 아이디와 비밀번호는<br>
		<%
			String id = request.getParameter("id");
			out.println(id);
		%>
			&nbsp;<%= request.getParameter("pw") %>
			&nbsp; 입니다.	
	</body>
</html>