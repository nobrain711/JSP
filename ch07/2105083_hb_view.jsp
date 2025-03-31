<%-- --------------------------------------------- --%>
<%-- 프로그램명     :  2105083_hb_view.jsp		   --%>
<%-- 작성일         :  2022/10/13                  --%>
<%-- 작성자         :  조동휘(2105083)	           --%>
<%-- 설명			: 전체 적인 공백  &nbsp로 조정 --%>
<%-- --------------------------------------------- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   	import="java.sql.*"
%>
<%-- 데이터 베이스 접속을 위해 java의 sql라이브러리 호출 --%>
<%-- 불러온 데이터의 문자의 Encoding을 UTF-8으로 지정 --%>
<% 	request.setCharacterEncoding("UTF-8");%>

<%	
	int i = 0;				//index지정을 위한 변수
	int c_number = 0;		//과목의 학점을 저장
	int number = 0;			//총 학점을 저장
	int Grade = 0;			//과목의 성적을 저장
	double g_score = 0;		//학점 * 성적을 저장
	double score = 0;		//총 학점을 저장
	
	//2105083_hb_input.jsp에서 hakbum파라미터의 값을 저장
	String Student_ID = request.getParameter("hakbum");
	
	//jdbc로 오라클 데이터 베이스 접속 및 전자지갑으로 클라우드의 데이터 베이스 접속
	String url = "jdbc:oracle:thin:@JSPDB_medium?TNS_ADMIN=/home/donghwi/Desktop/Wallet";
	
	//sql 구문을 저장 ?는 나중에 입력
	String sql = "select * from scorelist where student_id = ?";
	
	//혹시 모를 오류를 위해 예외처리
	try{
		//데이터 베이스가 오라클로 지정
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//드라이브 매니저로 데이터 베이스 접속 및 ADMIN 계정 로그인
		Connection con = DriverManager.getConnection(url, "ADMIN", "A01086991510j@");
		
		//sql의 ? 부분에 전 페이지에서 받아온 변수 입력
		PreparedStatement pstmt = con.prepareStatement(sql);
			
			// ?는 Student_ID로 변경
			pstmt.setString(1, Student_ID);
			
		//완성된 sql문으로 데이터 베이스에서 검색
		ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>성적표 출력</title>
		<style type="text/css">
			body {
				background-color: #A9BCF5;
			}
			table {
				border-top: 1px solid #444444;
				border-collapse: collapse;
			}
			th, td {
				border-bottom: 1px solid #444444;
				padding: 10px;
			}
			h4{
				text-shadow: 6px 2px 2px gray;
			}
			hr{
				margin-top : 25px;
				margin-bottom: 25px;
			}
			div{
				font-size: 30px;
				margin: 0px;
			}
		</style>
	</head>
	<body>
		<!-- body내의 태그를 중앙에 배치 -->
		<center>
			<h4>&nbsp&nbsp개&nbsp&nbsp인&nbsp&nbsp성&nbsp&nbsp적&nbsp&nbsp표&nbsp&nbsp</h4>
<%
		//while을 사용하는 이유는 불러올 데이터의 행이 모두 일정하게 지정되지않아 while문 사용
		//rs.next로 sql에서 호출 한 값 호출
		while(rs.next()){
			
			//만약 처음불러오는 경우에 학생 정보 출력을 위함
			if(i == 0){
				
				//학생 정보 출력 관련 테이블
				out.print("<table align='center'>");
				
					//테이블 헤더	
					out.print("<tr align='center'>");
						out.print("<th>학&nbsp&nbsp과</th>");
						out.print("<th>학&nbsp년</th>");
						out.print("<th>학&nbsp번</th>");
						out.print("<th>성&nbsp명</th>");
					out.print("</tr>");
				
					//테이블 데이터
					out.print("<tr align='center'>");
						out.print("<td>"+rs.getString(1)+"</td>");	//학과
						out.print("<td>"+rs.getString(2)+"</td>");	//학년
						out.print("<td>"+rs.getString(3)+"</td>");	//학번
						out.print("<td>"+rs.getString(4)+"</td>");	//이름
					out.print("</tr>");
				out.print("</table>");
				
				//선으로 위 테이블이랑 구분
				out.print("<hr>");
				
				//학생 성적 부분 테이블
				out.print("<table align='center'>");
					
					//테이블 헤더
					out.print("<tr align='center'>");
						out.print("<th>순&nbsp번</th>");
						out.print("<th>학&nbsp과&nbsp번&nbsp호</th>");
						out.print("<th>과&nbsp&nbsp목&nbsp&nbsp명</th>");
						out.print("<th>학&nbsp점</th>");
						out.print("<th>등&nbsp급</th>");
					out.print("</tr>");
			}
			//학점
			c_number = rs.getInt(7);
			
			//등급
			Grade = rs.getInt(8);
			
			//총 학점
			number += c_number;
			
			//등급 별 점수
			//등급 * 학점
			//A+
			if(Grade >= 95 && Grade <= 100)
				g_score += c_number * 4.5;
			
			//A
			if(Grade >= 90 && Grade < 95)
				g_score += c_number * 4.0;
			
			//B+
			if(Grade >= 85 && Grade < 90)
				g_score += c_number * 3.5;
			
			//B
			if(Grade >= 80 && Grade < 85)
				g_score += c_number * 3.0;
			
			//C+
			if(Grade >= 75 && Grade < 80)
				g_score += c_number * 2.5;
			
			//C
			if(Grade >= 70 && Grade < 75)
				g_score += c_number * 2.0;
			
			//D+
			if(Grade >= 65 && Grade < 70)
				g_score += c_number * 1.5;
			
			
			//D
			if(Grade >= 60 && Grade < 65)
				g_score += c_number * 1.0;
			
			//F
			if(Grade < 60)
				g_score += c_number * 0;
				
				//테이블 데이터
				out.print("<tr align='center'>");
					out.print("<td>"+ ++i +"</td>");				//index
					out.print("<td>"+rs.getString(5)+"</td>");		//과목 번호
					out.print("<td>"+rs.getString(6)+"</td>");		//과목 명
					out.print("<td>"+c_number+"</td>");				//학점
					out.print("<td>"+rs.getString(9)+"</td>");		//등급
				out.print("</tr>");
		}
	out.print("</table>");
	
	//전체 평균 점수
	score = g_score / number;
	
	//div 태그 지정
	out.print("<div>");
	
	//취득 과목 수
	out.print("총&nbsp취득&nbsp과목&nbsp: "+i+"<br>");
	
	//취득 학점
	out.print("총&nbsp취득&nbsp학점&nbsp: "+number+"<br>");
	
	//전체 평균 점수는 출력 포맷으로 소수점아래 2번째 까지 출력
	out.print("전체&nbsp평균&nbsp점수&nbsp: "+String.format("%.2f", score)+"점<br>");
	
	//DB에서 접속 되었다는 안내문구 출력
	out.print("<h4>DB에서 정상적으로 검색 되었습니다!!!</h4>");
	out.print("</div>");
	
	rs.close();
	pstmt.close();
	con.close();
	}
	
	//오류가 발생한 경우 예외로 처리
	catch(SQLException e){
		out.print(e);	//오류 코드 출력
		out.print("<br>오류가 발생했습니다. 다시 확인 주세요");		//안내문구
	}
%>
		</center>
	</body>
</html>