<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>개설 과목 입력 화면</title>
		<script type="text/javascript">
			function In_Click() {
				if(document.Form.code.value == ""){
					alert("과목 코드를 입력하여 주세요!!!");
					return;
				}
				if(document.Form.name.value == ""){
					alert("과목명을 입력하여 주세요!!!");
					return;
				}
				if(document.Form.c_number.value == ""){
					alert("학점 수를 입력하여 주세요!!!");
					return;
				}
				document.Form.submit();
			}
		</script>
		<style type="text/css">
			body{
				background-color: #8CB3EF;
			}
			table{
				text-align: center;
				font-size: 25px;
				background-color: #ffffff;
			}
			h4{
				font-size: 35px;
				text-shadow: 4px 4px 0px #bdbdbd;
			}
			#text{
				height:25px; 
			}
			#btn{
				height: 30px;
				width: 60px;	
			}	
		</style>
	</head>
	<body>
		<center>
			<h4>개설 과목 입력 화면</h4>
			<form action="app11-02-1.jsp" method="post" name="Form">
				<table border="1" cellpadding="2" cellspacing="2">
					<tr>
						<td>과목 코드</td>
						<td><input type="text" id="text" name="code"></td>
					</tr>
					<tr>
						<td>과목 명</td>
						<td><input type="text" id="text" name="name"></td>
					</tr>
					<tr>
						<td>학 점 수</td>
						<td><input type="text" id="text" name="c_number"></td>
					</tr>
					<tr>
						<td>담당교수번호</td>
						<td><input type="text" id="text" name="professor"></td>
					</tr>
					<tr>
						<td>추가수강료</td>
						<td><input type="text" id="text" name="course_fees"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" id="btn" naem= "confirm" value="등록" onclick="In_Click()">
							<input type="reset" id="btn" value="취소">
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</html>