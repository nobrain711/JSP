<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    buffer="10kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title> out 내장객체 예제</title>
	</head>
	<body>
		<h4> out 내장객체 예제</h4>
		<%
		 	int total = out.getBufferSize();
		 	int unused = out.getRemaining();
		 	out.println("출력버퍼 	크기 : "+total+"Byte<br>");
		 	out.println("이용가능한 버퍼 : "+unused+"Byte<br>");
		 	out.println("사용한		버퍼 : "+(total-unused)+"Byte<br>");
	 	%>
	</body>
</html>