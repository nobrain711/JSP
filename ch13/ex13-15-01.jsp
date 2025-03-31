<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--jsp 주석문 --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%--jsp 프로그램에서 선언 --%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    <c:set var="srow" value="0"/>
    <c:set var="mrow" value="1"/>
    
    <sql:query var="rs" dataSource="jdbc/OracleDB" maxRows="${mrow}" startRow="${srow}">
    select dept_name, year, student_id, name
    from Student join Department using(Dept_id)
    where student_id=?
    <sql:param value="${param.hb}"/>
    </sql:query>
    
    <sql:query var="rsl" dataSource="jdbc/OracleDB">
    select Course_id, title, c_number, grade
    from SG_Scores join Course using(Course_id)
    where student_id =?
    <sql:param value="${param.hb}"/>
    </sql:query>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적 조회 화면</title>
</head>
<body>
<table border="1" align="center">
	<tr border="1" align="center">
	<td><b>개인별 성적표</b></td>
	</tr>
</table><br>
<!-- html 주석문 -->
<table border="1" align="center">
	<tr border="1" align="center">
	<th>학과</th>
	<th>학년</th>
	<th>학번</th>
	<th>성명</th>
	</tr>
	
	<c:forEach items="${rs.rows}" var="rs">
	<tr border="1" align="center">
	<td>${rs.dept_name}</td>
	<td>${rs.year}</td>
	<td>${rs.student_id}</td>
	<td>${rs.name}</td>
	</tr>
	</c:forEach>
	</table><br>
	
	
	<table border="1" align="center">
		<tr>
	<th>순번</th>
	<th>과목번호</th>
	<th>과목명</th>
	<th>학점</th>
	<th>등급</th>
	</tr>
	
	<c:set var="sno" value="${rsl.rowCount}" />
	<c:set var="sum_Avg" value="0.00" />
	<c:forEach items="${rsl.rows}" var="rsl" varStatus="status">
	<tr border=1>
	<td align=center>${status.count}</td>
	<td align=center>${rsl.course_id}</td>
	<td>${rsl.title}</td>
	<td align=center>${rsl.c_Number}</td>
	<td>${rsl.grade}</td>
	</tr>
	<c:choose>
	<c:when test='${rsl.grade == "A+"}'><c:set var="avg" value="4.5"/></c:when>
	<c:when test='${rsl.grade == "A "}'><c:set var="avg" value="4.0"/></c:when>
	<c:when test='${rsl.grade == "B+"}'><c:set var="avg" value="3.5"/></c:when>
	<c:when test='${rsl.grade == "B "}'><c:set var="avg" value="3.0"/></c:when>
	<c:when test='${rsl.grade == "C+"}'><c:set var="avg" value="2.5"/></c:when>
	<c:when test='${rsl.grade == "C "}'><c:set var="avg" value="2.0"/></c:when>
	<c:when test='${rsl.grade == "D+"}'><c:set var="avg" value="1.5"/></c:when>
	<c:when test='${rsl.grade == "D" }'><c:set var="avg" value="1.0"/></c:when>
	<c:when test='${rsl.grade == "F "}'><c:set var="avg" value="0.0"/></c:when>
	</c:choose>
	
	<c:set var="sum_Number" value="${sum_Number + rsl.c_Number}" />
	<c:set var="sum_Avg" value="${sum_Avg + (avg * rsl.c_Number)}" />

	</c:forEach>
	</table><br>
	
	<table border="1" align="center">
		<tr>
		<td>총획득과목수</td>
		<td>[${sno}]과목</td>	
	    </tr>
	    
		<tr>
		<td>총획득학점수</td>
		<td>[${sum_Number}]학점</td>	
	    </tr>
	
		<tr>
		<td>전체평균평점</td>
		<td>[<fmt:formatNumber value="${sum_Avg div sum_Number}" pattern=".00"/>]점</td>	
	    </tr>
	</table>
</body>
</html>