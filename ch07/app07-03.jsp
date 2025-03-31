<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table {
				text-align: center;
				font-size: 25px;
			}
			#text{
				height: 25px;
			}
			#btn{
				width: 50px;
				height: 24px;
				margin: 2.5px 2.5px 2.5px 2.5px;
			}
		</style>
		<script type="text/javascript">
			function In_Click(){
				if(document.input.code.value == ""){
					alert("과목 코드를 입력하여주세요!!!");
					return;
				}
				document.input.submit();
			}
		</script>
	</head>
	<body>
		<center>
			<h4>수정할 과목 코드를 입력하세요</h4>
			<form action="app07-03-1.jsp" method="post" name="input">
				<table border="1" cellpadding="2" cellspacing="2">
					<tr>
						<td>과목코드</td>
						<td><input type="text" name="code" id="text"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" name="delect" id="btn" value="수정" onclick="In_Click()">
							<input type="reset" id="btn" value="취소">
						</td>
					</tr> 
				</table>
			</form>
		</center>
	</body>
</html>