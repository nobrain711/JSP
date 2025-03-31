<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>테이블 행 추가 폼</title>
		<script type="text/javascript">
			function In_Check() {
				if(document.deptinput.dept_id.value == ""){
					alert("학과코드를 입력하시오!!!");
					return;
				}
				if(document.deptinput.dept_name.value == ""){
					alert("학과명을 입력하시오!!!");
					return;
				}
				document.deptinput.submit();
			}
		</script>
	</head>
	<body>
		<center>
			<h3> 학과 정보 입력 화면</h3>
			<form action="ex07-02-1.jsp" name="deptinput" method="post">
				<table border="1" cellpadding="1">
					<tr>
						<td>학과코드</td>
						<td><input tyep="text" name="dept_id"></td>
					<tr>
						<td>학 과 명</td>
						<td><input tyep="text" name="dept_name"></td>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="dept_tel"></td>
					<tr align="center">
						<td colspan="2">
							<input type="button" name="confirm" value="등 록" onclick="In_Check()">
							<input type="button" name="reset" value="취 소">
						</td>
				</table>
			</form>
		</center>
	</body>
</html>