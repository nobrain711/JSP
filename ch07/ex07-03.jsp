<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>수정폼 [1]</title>
		<script type="text/javascript">
			function In_Check(){
				if(document.idform.dept_id.value == ""){
					alert("학과코드를 입력하세오!!!");
					return;
				}
				document.idform.submit();
			}
		</script>
	</head>
	<body>
		<center>
			<h4>수정학 학과코드를 입력하세요</h4>
			<form action="ex07-03-1.jsp" name="idform" method="post">
				<table width="200" border="1" cellspacing="0" cellpadding="5">
					<tr>
						<td align="center">학과코드</td>
						<td><input type="text" name="dept_id" size="10"></td>
					<tr align="center">
						<td colspan="2">
							<input type="button" name="modify" value="수정" onclick="In_Check()">
							<input type="reset" value="취소">
						</td>
				</table>
			</form>	
		</center>
	</body>
</html>