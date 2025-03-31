<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>배열 값 받기</title>
	</head>
	<body>
		<h4>성별과 좋아하는 과목은</h4>
		<% 
			String sex = request.getParameter("sex");
		 	String[] chk = request.getParameterValues("subj");
		 	
		 	out.println("당신은 <b>"+sex+"</b>이고,<p>");
		 	out.println("좋아하는 과목으로<br>");
		 	
		 	for(int i = 0; i < chk.length; i++){
		 		out.println("<b>- "+chk[i]+"</b><br>");
		 	}
		 	out.println("<br>"+chk.length +"과목을 선택하였군요.");
	   %>
	   
	</body>
</html>