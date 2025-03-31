<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.Date , java.text.SimpleDateFormat"
%>
<%
	Date d = new Date(); //현재 서버 날짜 및 시간대
	SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd a hh:mm:ss"); //날짜 format
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>page 지시어 예시</title>
	</head>
	<body>
		Today is : <%=d %><p>
		오늘은 : <%=sf.format(d) %>입니다.
	</body>
</html>