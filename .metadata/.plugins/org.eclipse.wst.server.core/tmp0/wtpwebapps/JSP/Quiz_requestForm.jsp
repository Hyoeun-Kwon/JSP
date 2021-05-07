<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<form action="Quiz_requestParameter.jsp" method="get">
	
	
		 <input type="text" name="tfnum1" size="10"> 
		 <input type="text" name="tfnum2" size="10"> <br>
		
		
		<select name="cbnum1">
			
			<%
			
			for(int i=1; i<=999; i++){
				out.print("<option value="+i+">"+i+"</option>");
			}
			%>

		</select> X
		
		<select name="cbnum2">
			
			<%
			
			for(int i=1; i<=999; i++){
				out.print("<option value="+i+">"+i+"</option>");
			}
			%>

		</select>
		
		
		<input type="submit" value="OK">
		
	</form>

</body>
</html>