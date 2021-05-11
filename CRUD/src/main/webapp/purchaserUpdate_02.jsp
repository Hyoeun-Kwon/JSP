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
		<h4>수정후 확인버튼을 누르세요</h4>
<% 	
	
	//입력한 id 받기 (원래했던거 복사해서 위에 import=java.sql 만 해주면 컨+스페이스 안해도 됨)
	String userid = request.getParameter("userid");

	String strUserId = null; //여기에 쿼리로 가져온걸 넣으려고 함
	String strUserName = null;
	String strUserTel = null;
	String strUserAddress = null;

	//--------------------------
	//--- 사이가 DB로 넣을 부분 

	String url_mysql = "jdbc:mysql://192.168.0.78/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false"; //스키마
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	int check = 0;
	
	//PreparedStatement ps = null; //요즘은 다 프리페어스테이트먼트 쓴다 (보안상) 
	//prepare는 insert update, delete에서만 사용
	String whereStatement ="select userid, name, tel, address from purchaserinfo where userid = '" + userid+ "'"; //from table
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		
		//값을 세팅한다 DB에서 이미 찾아놓음
		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		
		while(rs.next()){
			//userid 가져오는 것 (쿼리문 통해)
			strUserId = rs.getString(1);
			strUserName = rs.getString(2);
			strUserTel = rs.getString(3);
			strUserAddress = rs.getString(4);
			check++;
		} //불러오기!
		
		conn_mysql.close();
		
		/* session.setAttribute("ID", strUserId);  //userid는 각 번호당 내가 작성한 진짜 id ()
		//아이디를 찾았을 경우에만 세션에 넣어줌 (옛날 아이드를 가지고 있어야 하므로)
		session.setAttribute("NAME", strUserName); 
		session.setAttribute("TEL", strUserTel); 
		session.setAttribute("ADRESS", strUserAddress);  */
		
		
	}catch(Exception e){
		e.printStackTrace(); 
		
		
	}
	if(check==0){
		response.sendRedirect("purchaserUpdate_01.jsp");
		
	}
	//불러왔으므로 보여주자 + 그 보여준걸 수정해야하므로 form으로 받아서 날려줘야함
%>	

	<form action="purchaserUpdate_03.jsp" method="post">
		사용자 ID : <input type="text" name="userid" size="10" readonly="readonly" value="<%=strUserId%>"> <br>
		성명 : <input type="text" name="name" size="10" value="<%=strUserName%>"> <br>
		전화번호 : <input type="text" name="tel" size="10" value="<%=strUserTel%>"> <br> 
		주소 : <input type="text" name="address" size="10" value="<%=strUserAddress%>"> <br>
		<input type="submit" value="확인">
	
	</form>

</body>
</html>