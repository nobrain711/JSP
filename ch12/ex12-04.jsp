<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>로그인 입력 화면</title>
	</head>
	<body>
		<center>
			<form method="post" action="ex12-04-1.jsp">
				<table border="1" cellspacing="1">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" size=15></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" size=15></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인">
							<input type="reset" value="취  소">
				</table>
			</form>
		</center>
	</body>
</html>