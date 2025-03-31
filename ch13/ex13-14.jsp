<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource
	url="jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet"
	driver="oracle.jdbc.driver.OracleDriver" user="ADMIN"
	password="A01086991510j@" var="dsl" scope="page" />

<sql:query var="rs" dataSource="${dsl}">
    	select course_id, title, c_number, nvl(course_fees,0) "fee"
    	from course
    	where c_number = 3
    	</sql:query>

<center>
	<h4>Course 테이블 조회</h4>
	<table border="1">
		<tr border="1" align="center">
			<th>번호</th>
			<th>과목코드</th>
			<th>과목명</th>
			<th>학점</th>
			<th>추가수강료</th>
		</tr>
		<c:forEach var="row" items="${rs.rows}" varStatus="status">
			<tr>
				<td align=center>${status.count}</td>
				<td align=center>${row.course_id}</td>
				<td>${row.title}</td>
				<td align=center>${row.c_number}</td>
				<td align=right>${row.fee}</td>
			</tr>

		</c:forEach>

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