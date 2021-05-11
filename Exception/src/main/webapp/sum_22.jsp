<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	//sum_02복사 해서 , try/ catch로 해줌
	//01에서 22로 보냄 (이건 그냥 해보는것 이보다는 위에  errorPage="DataError.jsp" 라고 넣어주는게 짱!)
	int num1 = 0, num2 =0, result = 0;
	try{
		
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		
		result = num1 + num2;
	}catch(Exception e){
		RequestDispatcher dispatcher = request.getRequestDispatcher("DataError.jsp");
		dispatcher.forward(request, response);
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈 결과</title>
</head>
<body>

<%=num1 %> + <%=num2 %> = <%=result %>


</body>
</html>