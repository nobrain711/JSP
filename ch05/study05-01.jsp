<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>5장 연습문제</title>
	</head>
	<body>
		<h4>개인정보 입력 화면</h4>
		이름과 전화번호를 입력하세요.!!!<p>
		<form method="post">
			이름 : <input tyep="text" name="name"><br>
			전화번호 : <input type="text" name ="telnumber"><br>
			<input type="submit" value="로그인">
			<input type="reset" value="취 소">
		</form>
		<%
			String name = "";
			String telnumber = "";
			
			if((request.getParameter("name") != null) && (request.getParameter("telnumber") != null)){
				name = request.getParameter("name");
				telnumber = request.getParameter("telnumber");
				session.setAttribute("name", name);
				session.setAttribute("telnumber", telnumber);
				response.sendRedirect("study05-02.jsp");
			}
		%>
	</body>
		
</html>