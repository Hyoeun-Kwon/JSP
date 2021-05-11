<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<body>
	<h4>아이디를 수정후 확인버튼을 누르세요</h4>
<% 	
	
	//입력한 id 받기 (원래했던거 복사해서 위에 import=java.sql 만 해주면 컨+스페이스 안해도 됨)
	String id = request.getParameter("id");
	String strUserid = null; //여기에 쿼리로 가져온걸 넣으려고 함

	//--------------------------
	//--- 사이가 DB로 넣을 부분 

	String url_mysql = "jdbc:mysql://192.168.0.78/eclipse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String result;
	
	//PreparedStatement ps = null; //요즘은 다 프리페어스테이트먼트 쓴다 (보안상) 
	//prepare는 insert update, delete에서만 사용
	//값을 세팅한다 DB에서 이미 찾아놓음
	String whereStatement ="select userid from wtest where id = " + id;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		
		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		
		while(rs.next()){
			//userid 가져오는 것 (쿼리문 통해)
			strUserid = rs.getString(1);
		} //불러오기!
		
		conn_mysql.close();
		session.setAttribute("ID", id); //입력 받은 일련번호 (1~ 33 등 숫자임)
		session.setAttribute("OLD", strUserid);  //userid는 각 번호당 내가 작성한 진짜 id ()
		//아이디를 찾았을 경우에만 세션에 넣어줌 (옛날 아이드를 가지고 있어야 하므로)
		
		
	}catch(Exception e){
		e.printStackTrace(); 
		
		
	}
	//불러왔으므로 보여주자 + 그 보여준걸 수정해야하므로 form으로 받아서 날려줘야함
%>	

	<form action="updateTest03.jsp" method="post">
		사용자 ID : <input type="text" name="userid" size="10" value="<%=strUserid%>">
		<input type="submit" value="확인">
	
	</form>



</body>
</html>