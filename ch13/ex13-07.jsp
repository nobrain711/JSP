<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<center>
	<h4>import 태그 예제</h4>
	<table border=1>
	  	<tr>
	      	<td>1. <c:import url="logo.jsp" /></td>
	  	</tr>
	  	<tr>
      		<td>2. <c:import url="main.jsp" /></td>
	  	</tr>
 	 	<tr>
      		<td>3. <c:import url="copyright.jsp" /></td>
	  	</tr>
				
		<tr>
			<td> <c:import url="../ch11/ex11-04.jsp" /></td>
		</tr>
	</table>
</center>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	</body>
</html>