<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 자바스윙이나 자바가 아님!! 간단해야함 jsp스럽게 -->
	
<%-- 	1 + 2 + 3 + ... + 99 + 100 =
	<%
	
	int sum=0;
	
	for(int i=1; i<=100; i++){
		sum+=i;
	}
	
	out.print(sum);
	
	%> --%>
	
	---------------------------Quiz2
	<br>
	
	

	<%
	int sum=0;
	for(int i=1; i<=100; i++){
		sum+=i;	
	}
	%>
	1부터 100까지의 합 = <%=sum %> <br>
	<% 
	
	for(int i=101; i<=200; i++){
		sum+=i;
	}
	
	%>
	1부터 200까지의 합 = <%=sum %><br>
	
	
	
	
	
</body>
</html>





