<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>request 내장 객체</title>
	</head>
		<body>
			<center>
				<h3>request 내장 객체를 사용한 예제</h3>
				<table border="1">
					<tr>
						<td> 요청 매서드</td>
						<td> <%= request.getMethod() %></td>
					<tr>
						<td> 요청 URL</td>
						<td> <%= request.getRequestURI() %></td>
					<tr>
						<td> 프로토콜 종류</td>
						<td> <%= request.getProtocol() %></td>
					<tr>
						<td> Server의 이름</td>
						<td> <%= request.getServerName() %></td>
					<tr>
						<td> Server의 Port 번호</td>
						<td> <%= request.getServerPort() %></td>
					<tr>
						<td> 사용자 컴퓨터의 IP주소</td>
						<td> <%=request.getRemoteAddr() %>
					<tr>
						<td> 사용자 컴퓨터의 이름</td>
						<td> <%= request.getRemoteHost() %>
				</table>	
				<h6>작성자 : 조동휘</h6>
			</center>	
		</body>
</html>