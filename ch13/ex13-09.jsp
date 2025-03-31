</html><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <h4>url 태그 예제</h4>
    <c:redirect url="https://www.naver.com"/>
    <c:url var="url1" value="https://www.google.co.kr/"/>
    <c:url var="url2" value="http://localhost:8080/jspstudy1905072/ch13/logo.jsp"/>
    <c:url var="url3" value="http://localhost:8080/jspstudy1905072/ch13/login.jsp">
    	<c:param name="id" value="jskang"/>
    	</c:url>
    	
    	<ul>
    	<li>url1 = ${url1}
    	<li>url2 = ${url2}
    	<li>url3 = ${url3}
    	</ul>
    	<!-- Google 사이트로 redirect -->
    	<c:redirect url="https://www.google.co.kr/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>