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
//2에서 합계를 구하고, 3에서 출력한다
	int sum =0;
	for(int cnt =1; cnt <=100; cnt++){
		sum+=cnt;
	}
	request.setAttribute("RESULT", sum);

	//action tag는 <% 밖에 사용 jsp누르고 컨+스페이스
%>

	<jsp:forward page="sact_03.jsp"  />









</body>
</html>