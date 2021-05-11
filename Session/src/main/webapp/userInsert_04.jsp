<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>


<%
	request.setCharacterEncoding("utf-8");
	String result = request.getParameter("result");
	session.setAttribute("RESULT", result);
	
%>

<h3>회원 가입 결과</h3> <br>

가입 되었습니다.<br>

<h2>가입내용</h2> 



<% // ${ID} 도 가능 	%>
아이디 : ${ID}  <br>
패스워드 :<%=session.getAttribute("PW")%><br>
성명 : <%=session.getAttribute("NAME") %>
	
<% session.invalidate();  %>


</body>
</html>