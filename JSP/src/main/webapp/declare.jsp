<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부</title>
</head>
<body>
	
<%-- 선언부 <br>
<%!
	int i= 10;
	String str = "I have a dream.";



%> --%>
<!-- 메소드 선언부 + 계산 (2개의 순서가 바껴도 된다: 보통 메서드 선언부는 html아래에 많이 둠.)  <br> -->


<%
	/* 보통은 이런식으로 많이 씀 (선언부 + 출력부, 메소드 따로) */
	int i= 10;
	String str = "I have a dream.";
	
	
	out.println("i = " + i + "<br>");
	out.println("str = " + str + "<br>");
	out.println("sum = " + sum(12,15) + "<br>");

%>

		
	
</body>
</html>
<%!
	/* 위치가 프린트 되는 부분 위, 아래 다 상관없고 보통은 html아래에 넣어둠 ---- 얘는 따로 잇어야함 !*/
	public int sum(int a, int b) {
		return a + b;
	}
%>