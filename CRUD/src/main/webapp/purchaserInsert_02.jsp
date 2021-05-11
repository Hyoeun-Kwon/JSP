<%@page import="java.sql.*"%>
<%-- <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%> --%>
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

	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String telno = request.getParameter("telno");
	String address = request.getParameter("address");
	
	

	//--------------------------
	//--- 사이가 DB로 넣을 부분 

	String url_mysql = "jdbc:mysql://192.168.0.78/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String result;
	
	PreparedStatement ps = null; //요즘은 다 프리페어스테이트먼트 쓴다 (보안상)
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "insert into purchaserinfo (userid, name , tel, address, insertdate";
		String B = ") values (?, ? , ? , ? , now())"; 
		
		ps = conn_mysql.prepareStatement(A+B);
		ps.setString(1, userid); //첫번째
		ps.setString(2, name);
		ps.setString(3, telno);
		ps.setString(4, address);
		ps.executeUpdate();
		
		conn_mysql.close();
		
		session.setAttribute("USERID", userid);
		session.setAttribute("NAME", name);
		session.setAttribute("TELNO", telno);
		session.setAttribute("ADDRESS", address);
		result = "success";
		
	}catch(Exception e){
		// e.printStackTrace(); 
		
		result = "fail"; 
		/* session.setAttribute("USERID", 틀렸어!);
		session.setAttribute("NAME", 틀렸어!);
		session.setAttribute("TELNO", 틀렸어!);
		session.setAttribute("ADDRESS", 틀렸어!); */
	}

	//--------------------------
	//result는 보여져도 되는 값이기 때문에 session에 넣지않고 , sendRedirect(?) 사용해서 보내도 됨! ( 내마음임)
	session.setAttribute("RESULT", result);
	response.sendRedirect("purchaserInsert_03.jsp");

%>

</body>
</html>