<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리하는 JSP</title>
</head>
<body>
	
<%

	String siteName = request.getParameter("sitename");
	
	switch(siteName){
	case "naver" :
		response.sendRedirect("https://www.naver.com");
		break;
	case "daum" :
		response.sendRedirect("https://www.daum.net");
		break;
	case "google" :
		response.sendRedirect("https://www.google.com");
		break;
	default:
		response.sendRedirect("http://localhost:8080/JSP/response_01.jsp");
	}



%>	
	
	
	
</body>
</html>