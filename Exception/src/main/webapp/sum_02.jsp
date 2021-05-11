<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="DataError.jsp"%>
    
<%
	//위치 아무데나 상관없음! (보통 디자인팀과 함께하면 위에 두라함)
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	
	int result = num1 + num2;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈 결과</title>
</head>
<body>

<%=num1 %> + <%=num2 %> = <%=result %>


</body>
</html>