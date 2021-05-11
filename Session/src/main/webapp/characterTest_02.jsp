<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//request로 한글이 날아옴 
	request.setCharacterEncoding("utf-8");
	// 변수 받아주기
	String food = request.getParameter("food");
	
	//Session에 입력하기
	session.setAttribute("FOOD", food);
	//set 저장 , FOOD는(앞): 변수이름
	
	//이로써 앞에서 불러온 데이터 저장함
%>
	<h2>좋아하는 동물은?</h2>
	<br>
	<form action="characterTest_03.jsp" method="post">
		<input type="text" name="animal">
		<br><br>
		<input type="submit" value="확인">
	
	</form>


</body>
</html>