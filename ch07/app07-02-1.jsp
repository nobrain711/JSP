<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<%	String course_id = request.getParameter("code");
	String title = request.getParameter("name");
	int c_number = Integer.parseInt(request.getParameter("c_number"));
	String professor_id = request.getParameter("professor");
	int course_fees = Integer.parseInt(request.getParameter("course_fees"));
	
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	String sql = "insert into course values (?, ?, ?, ?, ?)";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
		PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, course_id);
			pstmt.setString(2, title);
			pstmt.setInt(3, c_number);
			pstmt.setString(4, professor_id);
			pstmt.setInt(5, course_fees);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.print("<h4>Course 테이블에 한 행이 저장되었습니다!!!</h4>");
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