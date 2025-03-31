<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	out.println("<h4>[ 쿠키의 정보 얻어오는 예제 ]");
	out.println("<hr>");
	
	//쿠키를 얻는다
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		out.println("현재 설정된 쿠키의 개수 = > " + cookies.length);
		out.println("<br><hr>");
		
		for(int i = 0; i < cookies.length; i++){
			out.println(i+"번째 쿠키의 이름 = > "+cookies[i].getName());
			out.println("<br><hr>");
			out.println("쿠키에 설정된 값 = > "+cookies[i].getValue());
			out.println("<br><hr>");
		}
	}
	else
		out.println("저장된 쿠키가 없습니다.");
%>