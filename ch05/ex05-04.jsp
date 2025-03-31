<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Session 내장객체 예제(1)</title>
	</head>
	<body>
		<h4>Session 내장객체 예제(1)</h4>
		아이디를 입력하세요
		<form method="post">
		<table border="1">
			<tr>
				<td>아이디 : <input type="text" name="id">
							 <input type="submit" value="아이디">
				</td>
			</tr>
		</table>
		</form>
		<%
			String user = "";
			
			if(request.getParameter("id") != null){
				user = request.getParameter("id");
				session.setAttribute("id", user);
				response.sendRedirect("ex05-04-1.jsp");
			}
		%>
	</body>
</html>