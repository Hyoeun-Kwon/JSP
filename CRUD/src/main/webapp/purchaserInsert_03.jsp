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
	request.setCharacterEncoding("utf-8");	
	if(session.getAttribute("RESULT").equals("success")){
	%>
		사용자 ID : <%=session.getAttribute("USERID") %> <br>
		성명 :  <%=session.getAttribute("NAME") %> <br>
		전화번호 :  <%=session.getAttribute("TELNO") %> <br>
		주소 :  <%=session.getAttribute("ADDRESS") %> <br>
	<%
	}
	%>

	
	 <%=session.getAttribute("RESULT") %> <br>
	 <% session.invalidate(); %>
</body>
</html>