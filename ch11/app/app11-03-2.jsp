<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, javax.sql.*, javax.naming.*"
%>
<% 	
	request.setCharacterEncoding("UTF-8");
	String course_id = request.getParameter("course_id");
	String title = request.getParameter("title");
	int c_number = Integer.parseInt(request.getParameter("c_number"));
	String professor_id = request.getParameter("professor");
	int course_fees = Integer.parseInt(request.getParameter("course_fees"));
	
	String sql = "update course ";
	sql += " Set title = ?, c_number = ?, professor_id = ?, course_fees = ?";
	sql += " where course_id = ?";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		Connection con = ds.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setInt(2, c_number);
			pstmt.setString(3, professor_id);
			pstmt.setInt(4, course_fees);
			pstmt.setString(5, course_id);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.print(course_id+"의 정보가 수정되었습니다,");
	}catch(SQLException e){
		out.println(e);
		out.print(course_id+"의 정보 수정이 실패했습니다.");
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