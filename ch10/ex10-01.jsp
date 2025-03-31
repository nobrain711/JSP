<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기</title>
</head>
<body>
<CENTER>
<h3>계산기</h3>
<hr>
<form method=post action=/jspStudy1905072/CalcServlet name=forml>
	<input type="text" name="num1" width=200 size="5">
	<select name="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
	</select>
	<input type="text" name="num2" width=200 size="5">
	<input type="submit" value="계산" width=200 size="b1">
	<input type="reset" name="재입력" width=200 size="b2">
</form><HR>
</body>
</html>