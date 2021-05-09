<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 저장 결과</title>
</head>
<body>

<%
	

	request.setCharacterEncoding("utf-8");

	String quantity = request.getParameter("quantity");
	String size = request.getParameter("size");
	String color = request.getParameter("color");
	//앞의 내용들 받아옴
	
	String filename ="file.txt";
	

	PrintWriter writer = null;
	String result; //결과 값은 따로 보내주기 
	
	try{
		String filePath = application.getRealPath("/" + filename); // 정확위치(파일이름)
		writer = new PrintWriter(filePath);
		
		writer.println("수량 :" + quantity); 
		writer.println("크기 :" + size);
		writer.println("색상 :" + color);
		
		result= "success";
	}catch(Exception e){
		result= "fail";
	}finally{
		try{
			writer.close();   // 꼭 닫아줘야함
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	response.sendRedirect("Quiz_cart_03.jsp?result=" + result);


%>




</body>
</html>