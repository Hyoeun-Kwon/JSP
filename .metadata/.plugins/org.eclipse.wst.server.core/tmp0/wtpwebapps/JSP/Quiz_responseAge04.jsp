<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자 확인</title>
</head>
<body>
	
	
	
	
	<%
	/* String valAge = request.getParameter("valAge"); */
	String age = request.getParameter("age");
	
	%>
	
	<h1> 미성년자 </h1>
	당신의 나이는  <%=age %>살 이므로 주류 구매가 불가능합니다. <br>
	<!-- <a href = "http://localhost:8080/JSP/Quiz_responseAge01.jsp">처음으로 이동</a> -->
	<a href = "Quiz_responseAge_01.jsp">처음으로 이동</a>
	


	
</body>
</html>