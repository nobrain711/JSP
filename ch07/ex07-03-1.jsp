<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	String Dept_ID = request.getParameter("dept_id");
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	String sql = "Select * from department where Dept_ID = ?";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
	PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Dept_ID);
	
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		String Dept_Name = rs.getString(2);
		String Dept_Tel = rs.getString(3);
	
	
		rs.close();
		pstmt.close();
		con.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>수정폼[2]</title>
	</head>
	<body>
		<center>
			<h4> 학과명 수정 화면</h4>
				<form action="ex07-03-2.jsp" method="post" name="deptform">
					<table border="1" cellspacing="1">
						<tr>
							<td>학과코드</td>
							<td>
								<%= Dept_ID %>
								<input type="hidden" name="dept_id" value="<%= Dept_ID %>">
							</td>
						</tr>
						<tr>
							<td>학 과 명</td>
							<td>
								<input type="text" name="dept_name" value="<%= Dept_Name %>">
							</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td>
								<input type="text" name="dept_tel" value="<%= Dept_Tel %>">
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