<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>

<!--  java다 --> 
-------------Quiz 도 함께 <br>

	<%
		int a = 30;
		int b = 20;
		int addition = a + b;
		/* int sub= a-b;
		int mul= a*b;
		int div= a/b;
		int remainder = a%b; */
		
		/* system은 내 컴퓨터를 말하는건데 서버를 쓰는것이므로 system이 없음 */
		out.println(a + "+" + b + "=" + (a+b));
	%>
	
<%-- 	<%=a %> + <%=b %> = <%=addition %> <br>
	
	<!-- 혼자해보기 -->
	<%=a %> - <%=b %> = <%=sub %><br>
	<%=a %> * <%=b %> = <%=mul %><br>
	<%=a %> / <%=b %> = <%=div %><br>
	<%=a %> % <%=b %> = <%=remainder %><br> --%>
	
	
</body>
</html>