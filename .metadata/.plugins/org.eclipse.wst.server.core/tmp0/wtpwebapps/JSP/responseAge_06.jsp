<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<titl>나이 판단</title>
</head>
<body>
	
	
	<%
	
	//성인인지 아닌지, 나이, 가능 불가능 넘기기
	
	int age;
	age= Integer.parseInt(request.getParameter("age"));
	String adult, possible;
	
	if(age>=20){
		adult = URLEncoder.encode("성인"); 
		possible = URLEncoder.encode("가능"); 
		
	}else{
		adult = URLEncoder.encode("미성년자"); 
		possible = URLEncoder.encode("불가능"); 
		
	}
	response.sendRedirect("responseAge_07.jsp?age=" +age + "&adult=" + adult +"&possible=" + possible);
	%>
	
	
	
	
</body>
</html>