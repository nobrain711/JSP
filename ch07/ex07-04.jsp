<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>삭제폼</title>
		<script type="text/javascript">
			function ID_Check(){
				if(document.idinput.dept_id == ""){
					alert("삭제할 학과코드를 입력하세요!!!");
					return;
				}
			document.idinput.submit();
			}
		</script>
	</head>
	<body>
		<center>
			<h4> 삭제할 학과코드를 입력하세요!!!</h4>
			<form method="post" action="ex07-04-1.jsp" name="idinput">
				<table width="200" border="1" cellspacing="0" cellpadding="5">
					<tr>
						<td align="center">학과코드</td>
						<td>
							<input type="text" name="dept_id" size="10">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="button" name="delete" value="삭제" onclick="ID_Check()">
							<input type="reset" value="취소">
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</html>