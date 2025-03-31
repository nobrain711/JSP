<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>배열로 전송된 값 처리</title>
	</head>
	<body>
		<h4> 당신이 보고 싶은 영화제목으로 선택한 것은 ?</h4>
		<%
			String[] movie = request.getParameterValues("movie");
			
			
			for(int i = 0; i < movie.length; i++){
				out.println(i+1+" : "+movie[i]);
				out.println("<br>");
			}
			
			switch (movie.length){
			case 1:
			case 2:
				out.println("<p>영화를 좋아하시네요.");
				break;
			case 3:
			case 4:
				out.println("<p>영화감상이 취미시네요.");
				break;
			default:
				out.println("<p>영화광이시네요.");
				break;
			}
		%>
	</body>
</html>