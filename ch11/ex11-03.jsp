<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*, javax.sql.*, javax.naming.*"
%>
<%
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:/comp/env/jdbc/OracleDB");
		Connection con = ds.getConnection();
		out.print("<h4> DB 서버에 연결되었습니다.</h4>");
	}catch(Exception e){
		out.print("<h4> DB 서버에 연결되지 않았습니다.</h4>");
		e.printStackTrace();
	}
%>