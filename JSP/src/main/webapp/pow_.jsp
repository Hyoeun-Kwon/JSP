<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2의 거듭제곱</title>
</head>
<body>

<%
	// 컴터는 for문(반복문)을 좋아함! , if문은 덜 쓸까 
	
	out.print((int)Math.pow(2,3) + "<br>");
	out.print("---------------------<br>");

	
	
	for(int i=1; i<=5 ; i++){
		out.print("2 ^ " + i + " = " + power(2,i) + "<br>");
	}
%>	
	-----------------------------------<br>
	2 ^ 1 = <%=power(2,1) %> <br>
	2 ^ 2 = <%=power(2,1) %> <br>
	2 ^ 3 = <%=power(2,1) %> <br>
	
	
<%

	//지시자   : import 되는 것! (page 붙어있으면 page 지시자)
	//Arrays. (java.util 찾아서 사용!)
	int[] iArr = {10,20,30};
	out.print(Arrays.toString(iArr));


%>	
	
</body>
</html>
	<%!
	
	private int power(int a, int b){
		int result =1;
		for(int i=0; i< b; i++){
			result *=a;
		}
		return result;
	}
	
	
	%>
	
	
	
	
	
	
	