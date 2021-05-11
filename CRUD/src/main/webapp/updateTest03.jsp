<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //수정하는 부분

	String userid = request.getParameter("userid");

	//--------------------------
	//--- 사이가 DB로 넣을 부분 

	String url_mysql = "jdbc:mysql://192.168.0.78/eclipse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String result;
	
	PreparedStatement ps = null; 
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "update wtest set userid = ? where id= ?";   // 첫번째는 입력한것(수정한것) 두번째는 옛날 아이디임(키값)
		
		
		ps = conn_mysql.prepareStatement(A);
		ps.setString(1, userid); //첫번째
		ps.setString(2,(String)session.getAttribute("ID")); //두번째  //session안에는 String인데 session자체는 string이 아님
		ps.executeUpdate();
		
		conn_mysql.close();
		session.setAttribute("NEW", userid);
	}catch(Exception e){
		e.printStackTrace(); 
		
		
	}

	//--------------------------
	
	response.sendRedirect("updateTest04.jsp");
	
	

%>
