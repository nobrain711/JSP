<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h4>c:choose태그 예제</h4>
<c:set var="login" value="admin" />
${login}은
<c:choose>
	<c:when test="${login == 'admin'}">관리자 입니다.</c:when>
	<c:when test="${login == 'guest'}">손님 입니다.</c:when>
	<c:when test="${empty login }">로드인하세요.</c:when>
	<c:otherwise>일반회원 입니다.</c:otherwise>
</c:choose>