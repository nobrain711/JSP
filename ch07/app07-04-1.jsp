<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String course_id = request.getParameter("course_id");
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	String sql = "Delete from course where course_id = ?";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
		PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, course_id);
			pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.print(course_id+"의 과목코드가 삭제되었습니다.");
	}catch (Exception e){
		out.print(course_id+"의 과목코드가 삭제되지 않았습니다.");
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