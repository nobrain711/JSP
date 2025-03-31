<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String Dept_ID = request.getParameter("dept_id");
	String Dept_Name = request.getParameter("dept_name");
	String Dept_Tel = request.getParameter("dept_tel");
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	String sql = "INSERT INTO department (Dept_ID, Dept_Name, Dept_Tel) VALUES(?,?,?)";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
		PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Dept_ID);
			pstmt.setString(2, Dept_Name);
			pstmt.setString(3, Dept_Tel);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.print("<h4>Department 테이블에 한 행이 저장되었습니다!!!</h4>");
	}catch(SQLException e){
		out.println(e);
		out.print("<h4>에러가 발생 했군요. 다시 확인해 보세요!!!</h4>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
			
	</body>
</html>