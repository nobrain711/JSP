<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*, javax.sql.*, javax.naming.*"
%>
<%
	int i = 0;
	String sql = "Select * from Course Where course_fees > 0";
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		Connection con = ds.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Course Table 검색</title>
	</head>
	<body>
		<center>
			<table border="1" cellspacing="1">
				<tr>
					<th colspan="6">Course table</th>
				<tr>
					<th>순번</th>
					<th>과목코드</th>
					<th>과목명</th>
					<th>학점수</th>
					<th>교수번호</th>
					<th>추가수강료</th>
				<%
					while(rs.next()){
						out.print("<tr>");
							out.print("<td>"+ ++i +"</td>");
							out.print("<td>"+ rs.getString(1) +"</td>");
							out.print("<td>"+ rs.getString(2) +"</td>");
							out.print("<td>"+ rs.getInt(3) +"</td>");
							out.print("<td>"+ rs.getString(4) +"</td>");
							out.print("<td>"+ rs.getInt(5) +"</td>");
					}
				}catch(Exception e){
					out.println("<h4>데이터 가져오기에 실패하였습니다.</h4>");
					e.printStackTrace();
					e.toString();	//에러 확인용
				}%>
			</table>
		</center>
	</body>
</html>