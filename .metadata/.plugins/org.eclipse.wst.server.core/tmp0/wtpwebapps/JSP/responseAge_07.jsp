<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 미성년자 확인</title>
</head>
<body>
	
	<%
	String age = request.getParameter("age");
	String adult = request.getParameter(URLDecoder.decode("adult"));
	String possible = request.getParameter(URLDecoder.decode("possible"));
	%>
	
	
	<h1> <%=adult %> </h1>
	당신의 나이는  <%=age %>살 이므로 주류 구매가 <%=possible %>합니다. <br>
	<a href = "responseAge_05.jsp">처음으로 이동</a>
	

	
	
	
	
</body>
</html>