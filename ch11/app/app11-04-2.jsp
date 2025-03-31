<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, javax.sql.*, javax.naming.*"
%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String course_id = request.getParameter("course_id");
	String sql = "Delete from course where course_id = ?";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		Connection con = ds.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, course_id);
		pstmt.close();
		con.close();
		out.print(course_id+"의 과목코드가 삭제되었습니다.");
	}catch (Exception e){
		out.println(course_id+"의 과목코드가 삭제되지 않았습니다.");
		e.printStackTrace();
		out.println(e);
	}

%>
