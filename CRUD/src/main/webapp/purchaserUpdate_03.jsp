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

<% //수정하는 부분

	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	request.setCharacterEncoding("utf-8");

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
		
		String A = "update purchaserinfo set name = ? , tel = ?, address = ? where userid= ?";   // 첫번째는(update하는 것) 입력한것(수정한것) 두번째는 옛날 아이디임(키값)
		
		//System.out.println(A);
		
		ps = conn_mysql.prepareStatement(A);
		
		ps.setString(1, name);  
		ps.setString(2, tel); 
		ps.setString(3, address); 
		ps.setString(4, userid); 
		
		ps.executeUpdate();
		
		conn_mysql.close();
		//session 에 넣는 것 : 다음 장에서 화면에 출력하기 위함
		session.setAttribute("USERID", userid);
		session.setAttribute("NAME", name);
		session.setAttribute("TEL", tel);
		session.setAttribute("ADDRESS", address);
		
		result = "success";
		
	}catch(Exception e){
		//e.printStackTrace(); 
		result = "fail";
		
	}

	//--------------------------
	
	session.setAttribute("RESUlT", result);
	response.sendRedirect("purchaserUpdate_04.jsp");
	
	

%>

</body>
</html>