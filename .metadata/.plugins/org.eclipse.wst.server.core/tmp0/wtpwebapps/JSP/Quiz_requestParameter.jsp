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
	String tfnum1, tfnum2;
	String num1, num2;
	
	
	tfnum1 =request.getParameter("tfnum1");
	tfnum2 =request.getParameter("tfnum2");
	
	
	
	int tfsum = Integer.parseInt(tfnum1)+Integer.parseInt(tfnum2);
	
	/* num1=request.getParameter("number1");
	num2=request.getParameter("number2");
 */
	%>
	
	<%=tfsum%> <br>
	
	



</body>
</html>