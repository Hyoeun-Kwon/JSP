<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>




	<table border="1">
		<tr>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
		</tr>
		
		<tr>
			<td>100</td>
			<td>90</td>
			<td>80</td>
		</tr>
		
		<tr>
			<td>100</td>
			<td>90</td>
			<td>80</td>
		</tr>
		
	</table>

	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3> <br><br>
	<!-- form 은 날라간다 action을 통해 name이라는 변수를 달고 --> 
	<form action="purchaserInsert_02.jsp" method="post">
	
		사용자 ID : <input type="text" name="userid" size="10"> <br>
		성명 : <input type="text" name="name" size="10"> <br>
		전화번호 : <input type="text" name="telno" size="15"> <br>
		주소 : <input type="text" name="address" size="20"> <br>
		

		<input type="submit" value="입력">
	

	</form>

<% //첫페이지에서 그냥 자바스크립트를 활용해 오류를 잡아도 됨(02를 안만들고) %>

</body>
</html>