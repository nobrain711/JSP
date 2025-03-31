<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>유호성 검사</title>
		<script>
			function In_Check(){
				if(document.login.id.value == ""){
					alert("아이디(ID)를 입력하세요!!!");
					return;
				}
				if(document.login.pw.value == ""){
					alert("비밀번호(PW)를 입력하세요!!!");
					return;
				}
				document.login.submit();
			}
		</script>
	</head>
	<body>
		<center>로그인 입력화면
		<form action="ex08-02-1.jsp" method="post" name="login">
		<table border="1" cellspacing="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"  size=17></td>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" size=17></td>
			<tr align="center">
				<td colspan="4">
					<input type="button" value="로그인" onclick="In_Check()">
					<input type="reset" value ="취 소">
				</td>
				
		</table>
		</form>
		</center>
	</body>
</html>