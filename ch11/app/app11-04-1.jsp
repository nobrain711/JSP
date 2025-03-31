<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, javax.sql.*, javax.naming.*"
%>
<% 
	request.setCharacterEncoding("UTF-8");
	String sql = "Select * from course where course_id = ?";
	String course_id = request.getParameter("course_id");
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	Connection con = ds.getConnection();
	PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, course_id);
	
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		String title = rs.getString(2);
		int c_number = rs.getInt(3);
		String professor = rs.getString(4);
		int course_fees = rs.getInt(5);
	
		rs.close();
		pstmt.close();
		con.close();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<center>
			<h4> 학과명 수정 화면</h4>
				<form action="app11-04-2.jsp" method="post" name="deptform">
					<table border="1" cellspacing="1">
						<tr>
							<td>학과코드</td>
							<td>
								<%= course_id %>
								<input type="hidden" name="course_id" value="<%= course_id %>">
							</td>
						</tr>
						<tr>
							<td>과 목 명</td>
							<td>
								<%= title %>
							</td>
						</tr>
						<tr>
							<td>학 점</td>
							<td>
								<%= c_number %>
							</td>
						</tr>
						<tr>
							<td>담당과목번호</td>
							<td>
								<%= professor %>
							</td>
						</tr>
						<tr>
							<td>추가수강료</td>
							<td>
								<%= course_fees %>
								<%
								}
								%>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" name="confirm" value="삭제하기">
								<input type="button" name="return" value="되돌가기" onclick="javascript:history.back(-1)">
							</td>
						</tr>
					</table>
				</form>
		</center>
	</body>
</html>