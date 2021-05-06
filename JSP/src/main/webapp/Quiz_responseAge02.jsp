<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인여부 판단</title>
</head>
<body>
	
	
	
	<%
	
	//계산 (사용자 입력한 값 받기) : request
	
	/* String inputAge = request.getParameter("age");
	int valAge = Integer.parseInt(inputAge); */
	
	int age;
	age= Integer.parseInt(request.getParameter("age"));
	
	if(age>=20) {
		/* response.sendRedirect("http://localhost:8080/JSP/Quiz_responseAge03.jsp?age=" + valAge); */
		response.sendRedirect("Quiz_responseAge_03.jsp?age=" +age);
	}else{
		/* response.sendRedirect("http://localhost:8080/JSP/Quiz_responseAge04.jsp?age=" +valAge); */
		response.sendRedirect("Quiz_responseAge_03.jsp?age=" +age);
	}
	
	%>
		
	
	
	
</body>
</html>