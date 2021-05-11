<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% //삭제하는 부분
	request.setCharacterEncoding("utf-8");
	String deleteId = (String)session.getAttribute("USERID");
	

	//--------------------------
	//--- 사이가 DB로 넣을 부분 

	String url_mysql = "jdbc:mysql://192.168.0.78/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String result;
	
	PreparedStatement ps = null; 
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "delete from purchaserinfo where userid= " + deleteId;   
		
		//System.out.println(A);
		
		ps = conn_mysql.prepareStatement(A);
		
		
		ps.executeUpdate();
		
		conn_mysql.close();
		

		
		result = "success";
		
	}catch(Exception e){
		//e.printStackTrace(); 
		result = "fail";
		
	}

	//--------------------------
	
	session.setAttribute("RESUlT", result);
	response.sendRedirect("purchaserDelete_04.jsp");
	
	

%>


</body>
</html>