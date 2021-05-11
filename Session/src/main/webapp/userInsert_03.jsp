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
	// 동의시 DB에 입력되게 바꿀거임!
	request.setCharacterEncoding("utf-8");
	
	String agree = request.getParameter("agree");
	String result ="";
	session.setAttribute("AGREE", agree);
	
	
	if(agree.equals("동의 함")){
		result="success";
		response.sendRedirect("userInsert_04.jsp");
	}else{
		result="fail";
		response.sendRedirect("userInsert_01.jsp");
		
	}
	session.setAttribute("RESULT", result);
%>





</body>
</html>