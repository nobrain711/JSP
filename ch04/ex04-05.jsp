<%-- --------------------------------------------- --%>
<%-- 프로그램명     :  ex04-05.jsp                 --%>
<%-- 작성일         :  2022/09/23                  --%>
<%-- 작성자         :  조동휘(Jo Dong Hwi)         --%>
<%-- --------------------------------------------- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.Date , java.text.SimpleDateFormat"
%>
<% /* Date  객채 생성 및 날짜 출력 형식 지정 */
	Date d = new Date(); //현재 서버 날짜 및 시간대
	SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd a hh:mm:ss"); //날짜 format
%>
<!-- HTML의 컨텐트 주석문입니다. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>page 지시어 예시</title>
	</head>
	<body>
		<%-- 날짜 및 시간 출력 --%>
		Today is : <%=d %><p>
		오늘은 : <%=sf.format(d) %>입니다.
	</body>
</html>