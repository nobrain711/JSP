<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>입력 폼[3]</title>
	</head>
	<body>
		<center>
		<h4>보고 싶은 영화제목 선택하기</h4>
		1.보고 싶은 영화를 선택해 주세요.<br>
		  (여러 제목을 선택할 경우에는 Ctrl 키를 사용하세요.)<p>
		<form method="post" action="ex06-06.jsp">
			<select name=movie size=4 multiple>
				<option value="설국열차">설국열차
				<option value="레드:더 레전드">레드:더 레전드
				<option value="친구">친구
				<option value="감시자들">감시자들
				<option value="피아니스트">피아니스트
				<option value="대부">대부
				<option value="한산:용의 출현">한산:용의 출현
				<option value="공조2:인터네셔널">공조2:인터네셔널
				<option value="탑건:매버릭">탑건:매버릭
				<option value="수리남">수리남
			</select><p>
			<input type="submit" value=" 전 송 ">
			<input type="reset"  value=" 취 소 ">
		</form>
		
		</center>
	</body>
</html>