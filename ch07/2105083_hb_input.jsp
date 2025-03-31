<%-- --------------------------------------------- --%>
<%-- 프로그램명     :  2105083_hb_input.jsp		   --%>
<%-- 작성일         :  2022/10/13                  --%>
<%-- 작성자         :  조동휘(2105083) 	           --%>
<%-- 설명			: 전체 적인 공백  &nbsp로 조정 --%>
<%-- --------------------------------------------- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>학번 조회</title>
		<script type="text/javascript">
			//조회 버튼을 누르면 In_Click함수 호출
			function In_Click() {
				/*
				만약 버튼을 누렸을 때 공백일 경우 경고창으로 입력한 내용이 없다고 알람
				html DOM의 구조로
				doucment -> html -> form(name = input) -> Input(name = hakbum) 접근
				*/
				if(document.input.hakbum == ""){
					alert("학번을 입력하여 주세요!!!");
					return;
				}
				
				//누락된 사항이 없을 경우 받은 정보를 2105083_hb_view.jsp로 보내면서 페이지 이동
				document.input.submit();
			}
		</script>
		<style type="text/css">
			/*html 전체의 관련 한 css 부부
			배경색 연한 남색*/
			body {
				background-color: #A9BCF5;
			}
			/*table에 관련 한 부분
			배경색 흰색*/
			table {
				background-color: #ffffff;
			}
			/*h4에 관련 한 부분
			태그 내 글자 그림자*/
			h4{
				text-shadow: 6px 2px 2px gray;
			}
		</style>
	</head>
	<body>
		<center>
			<h4>조회&nbsp할&nbsp학번은</h4>
			<!-- 데이터를 입력 받을 폼 생성-->
			<form method="post" name="input" action="2105083_hb_view.jsp">
				<!-- 테이블 생성 -->
				<table border="1" cellpadding="2" cellspacing="2">
					<!-- 입력 칸 -->
					<tr>
						<td>학&nbsp&nbsp번</td>
						<!-- hakbum이라는 html변수 생성 -->
						<td><input type="text" name="hakbum"></td>
					</tr>
					<tr>
						<!-- 버튼관련한 칸을 생성 후 버튼을 중앙에 위치 하기 위해 align=center로 배치 -->
						<td colspan="2" align="center">
							<input type="button" name="confirm" value="조 회" onclick="In_Click()">
							&nbsp&nbsp
							<input type="reset" value="취 소">
						</td>
					</tr>
				</form>
			</table>
		</center>
	</body>
</html>