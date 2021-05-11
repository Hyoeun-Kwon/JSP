<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //DB에 넣는 것이므로 절대 보여지면 안됨!!

	String userid = request.getParameter("userid");

	//--------------------------
	//--- 사이가 DB로 넣을 부분 

	String url_mysql = "jdbc:mysql://192.168.0.78/eclipse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null; //요즘은 다 프리페어스테이트먼트 쓴다 (보안상)
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "insert into wtest (userid";
		String B = ") values (?)"; 
		
		ps = conn_mysql.prepareStatement(A+B);
		ps.setString(1, userid); //첫번째
		ps.executeUpdate();
		
		conn_mysql.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}

	//--------------------------
	
	response.sendRedirect("insertTest03.jsp");
	

%>
