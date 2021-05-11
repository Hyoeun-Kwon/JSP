<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격 테스트 결과</title>
</head>
<body>
<% 
//출력만 해주는 곳 

	request.setCharacterEncoding("utf-8");//한글있든 없든 써주자!
	String animal = request.getParameter("animal");
	session.setAttribute("ANIMAL", animal);

%>

당신은 <%=session.getAttribute("FOOD") %> 와(과) <%=session.getAttribute("ANIMAL") %>을(를) 좋아하는 성격입니다.

<% session.invalidate(); 
// ****** 중요함!!!! (안하면 서버에 쓰레기만 쌓인다) -invalidate로 정의한다

%>
</body>
</html>