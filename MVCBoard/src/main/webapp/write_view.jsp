<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <table border="0">
		<form action="write.do" method="post">
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="20"></td>
			
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="50"></td>
			
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name="bContent"></textarea></td>
			
			</tr>
			
			<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주자 -->
			<tr>
				
				<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;<a href = "list.do">목록보기</a></td>
			
			</tr>
		
		</form>
	</table>




</body>
</html>