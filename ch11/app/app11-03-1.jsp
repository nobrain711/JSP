<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, javax.sql.*, javax.naming.*"%>
<%	
	//글자 인코딩을 utf-8로 지정
	request.setCharacterEncoding("UTF-8");
	String sql = "Select * from course where course_id = ?";
	String course_id = request.getParameter("code");
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
				<form action="app11-03-2.jsp" method="post" name="deptform">
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
								<input type="text" name="title" value="<%= title %>">
							</td>
						</tr>
						<tr>
							<td>학 점</td>
							<td>
								<input type="text" name="c_number" value="<%= c_number %>">
							</td>
						</tr>
						<tr>
							<td>담당과목번호</td>
							<td>
								<input type="text" name="professor" value="<%= professor %>">
							</td>
						</tr>
						<tr>
							<td>추가수강료</td>
							<td>
								<input type="text" name="course_fees" value="<%= course_fees %>">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" name="confirm" value="수 정">
								<input type="button" name="return" value="되돌가기" onclick="javascript:history.back(-1)">
							</td>
						</tr>
					</table>
				</form>
		</center>
	</body>
</html>
<%
	}
	else{
		out.print("<h3>학과코드가 존재하지 않습니다.</h3>");
	}
%>