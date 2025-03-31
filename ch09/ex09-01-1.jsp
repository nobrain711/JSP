<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("pw");
	boolean found = false;
	Cookie[] cookies = request.getCookies();
	
	for(int i = 0; i < cookies.length; i ++){
		if(cookies[i].getName().equals("MyCookie")){
			found = true;
			break;
		}
		if(!found){
			Cookie cookie = new Cookie("MyCookie", id);
			cookie.setMaxAge(60*60);
			response.addCookie(cookie);
			out.print("쿠키가 최초로 설정합니다.<br>");
		}
		else{
			out.print("쿠키가 설정되어 있습니다.");
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>쿠키 설정 예제</title>
	</head>
	<body>
		<h4> 로그인 정보</h4>
		로   그  인 : <%= id%><br>
		비 밀 번 호 : <%= passwd %><br>
		쿠키헤더:<%= request.getHeader("Cookie") %>
	</body>
</html>