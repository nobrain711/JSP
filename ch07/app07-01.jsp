<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%
	//수번
	int i = 0;
	//sql 구문
	String sql = "select * from course";
	//데이터 베이스 주소
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	//예외 처리
	try{
		//JDBC Drive로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//DB서버 연결
		Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
		//Statement 생성
		Statement stmt = con.createStatement();
		//select문 실행 및 결과 반환
		ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- 페이지 제목 출력 -->
		<title>과목 검색</title>
		<!-- css 적용 -->
		<style type="text/css">
			table{
			/*테이블에 관련한 부분
			넓이 페이지 의 75%
			클자 크기 25px
			글자 위치 중앙*/
				width: 75%;
				font-size: 25px;
				text-align: center;
			}
			h4{
			/*h4 태그에 관련한 부분
			글자 크기 20px*/
				font-size: 20px;
			}
			th{
			/*table => th 태그
			배경색 연 파랑 색*/
				background-color: #E0E6F8;
			}
			span{
			/*h4 => span 태그
			글자 색상 검 붉은 색
			글자 크기 35px*/
				color: #F01111;
				font-size: 35px;
			}
		</style>
	</head>
	<body>
		<!-- body태그 내의 모든 태그를 중앙에 배치 -->
		<center>
			<!-- h4 태그 출력 -->
			<h4 style="font-size: 35px">[[Course 테이블 검색]]</h4>
			<!-- 테이블로 기본적인 출력 모양 지정 -->
			<table border="1" cellpadding="2" cellspacing="2">
				<!-- 테이블 헤더 태그 -->
				<tr>
					<!-- 들어갈 데이터의 제목을 출력 -->
					<th>순번</th>
					<th>과목코드</th>
					<th>과목 명</th>
					<th>학점 수</th>
					<th>담당과목코드</th>
					<th>추가수강료</th>
				</tr>
<%
				//while 문으로 Course 테이블의 모든 데이터 출력
				while(rs.next()){
					out.print("<tr>");
						out.print("<td>"+ ++i +"</td>"); //순번 i를 1증가 후 출력
						out.print("<td>"+ rs.getString(1)+"</td>");	//과목코드를 출력
						out.print("<td>"+ rs.getString(2)+"</td>");	//과목 명를 출력
						out.print("<td>"+ rs.getString(3)+"</td>");	//학점 수를 출력
						out.print("<td>"+ rs.getString(4)+"</td>");	//담당과목코드를 출력
						out.print("<td>"+ rs.getString(5)+"</td>");	//추가수강료 출력
					out.print("</td>");
				}
%>
			</table>
			<!-- 데이터 베이스가 정상적으로 작동 했다는 내용 -->
			<h4>DB에서 정상적으로 검색 되었습니다<span>!!!</span></h4>
		</center>
	</body>
</html>
<%
	//위에서 출력한 내용들 종료
	rs.close();
	stmt.close();
	con.close();
	}
	//오류 발생 시 작동
	catch(SQLException e){
		out.print(e);	//오류 내용 출력
		out.print("<br>오류가 발색하였습니다. 다시 한번 확인해 주세요.");	//오류 안내문 출력
	}
%>