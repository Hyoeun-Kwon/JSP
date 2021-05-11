<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 수정 및 삭제</title>
</head>
<body>
	<h4>고객명단 수정 및 삭제</h4>

<%

	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");

	String url_mysql = "jdbc:mysql://192.168.0.78/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	//전역변수 선언은 여기서 해주는게 좋다
	String name = "";
	String tel = "";
	String address = "";
	
	//PreparedStatement ps = null; //요즘은 다 프리페어스테이트먼트 쓴다 (보안상) 
	//prepare는 insert update, delete에서만 사용
	//값을 세팅한다 DB에서 이미 찾아놓음
	String whereStatement ="select name, tel, address from purchaserinfo where userid = '" + userid + "'" ; //홑따옴표 안은 함부로 띄어쓰기 금지!
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		
		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		
		while(rs.next()){
			
			name = rs.getString(1);
			tel = rs.getString(2);
			address = rs.getString(3);
		} 
		
		conn_mysql.close();
		session.setAttribute("USERID", userid);
		
		
	}catch(Exception e){
		e.printStackTrace(); 
		
		
	}
	
	
%>
	
	<form action="purchaserSelect_03.jsp" method="post">
		User ID : <input type="text" name="userid" size="10" value="<%=userid%>" readonly="readonly"> <br>
		성명 : <input type="text" name="name" size="10" value="<%=name%>" > <br>
		전화번호 : <input type="text" name="tel" size="20" value="<%=tel%>" > <br>
		주소 : <input type="text" name="address" size="60" value="<%=address%>" > <br>
		
		<!-- 수정할때는수정할 데이터 같이 있어야 함 그래서 수정은 데이터 다 + 버튼 이고 삭제는 userid만 가지고 넘어감 -->
		<input type="submit" value="수정"> <br>
	
	</form>
	
	
	<form action="purchaserSelect_04.jsp" method="post">
		<input type="submit" value="삭제"> <br>
	</form>
	
	
	
	
</body>
</html>