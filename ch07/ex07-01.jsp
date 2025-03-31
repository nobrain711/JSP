<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% 
	int i = 0;
	//select문 문자열 구성
	String  sql = "select * from department";
	
	//DB서버의 url
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	
	try{
		//2단계 : JDBC Drive로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//3단계 : DB서버 연결
		Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
		
		//4단계 : Statement 생성
		Statement stmt = con.createStatement();
		
		//5단계 : select문 실행 및 결과 반환
		ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>테이블 검색</title>
	</head>
	<body>
		<center>
			<h4>[[ Department 테이블 검색  ]]</h4>
			<table border="1" cellspacing="1">
				<tr>
					<th>순번</th>
					<th>학과코드</th>
					<th>학 과 명</th>
					<th>전화번호</th>
				</tr>
<%
				//6단계 : 모든 행 반복 처리
				while(rs.next()){
					out.print("<tr>");
					out.print("<td>"+ ++i +"</td>");
					out.print("<td>"+rs.getString(1)+"</td>");
					out.print("<td>"+rs.getString(2)+"</td>");
					out.print("<td>"+rs.getString(3)+"</td>");
					out.print("</tr>");
				}

			out.print("</table>");
			
			//7단계 : 사용한 자원 해제
			rs.close();
			stmt.close();
			con.close();
			
			out.print("<h4>DB에서 정상적으로 검색 되었습니다.</h4>");
	}
	catch(SQLException e){
		out.print("<h4>에러가 발생 했습니다.</h4>");
		out.print("<h4>코드는 "+e+"입니다.</h4>");
	}
%>
				
			</table>
		</center>
	</body>
</html>