<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Quiz</title>
</head>
<body>
	
	<%

	for(int i=1; i<=9; i++){
		out.println("2 * "+ i + " = " + (2*i)+"<br>"); 
		out.println("=========="+"<br>");
	}
	
	%>
	
	---------------------------while문으로 바꾸기<br>
	<%
	
	int i = 1;
	while(i<=9){
		out.println("2 * " + i + " = " + (2*i) + "<br>=======<br>");
		i++;
	}
	

	
	%>
	

</body>
</html>