<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 명단 리스트</title>
</head>
<body>
	
		<h3>주소록 명단 리스트</h3>
		<form action="">
		
		검색선택 : <select name="cbsearch">
		<option value="이름">이름</option>
		<option value="전화번호">전화번호</option>
		<option value="주소" selected="selected">주소</option>
		<option value="관계">관계</option>
		
		</select>
		<input type="text" name="search" size="30">
		<input type="submit" value="검색"> <br><br>
		</form>
		
		
----------------------------------------------------------------		
<%
//시작 하면 DB로 가서 화면에 가져오는 것!


	//--------------------------
	//--- 사이가 DB로 넣을 부분 
	//timezome 을 잘못쓰면 now 쓰면 달라질 수 있음
	String url_mysql = "jdbc:mysql://192.168.0.78/useraddress?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	
	//query문에 사용할 변수
	String where = "";
	String search ="";
	if(request.getParameter("search") == null){
		where = "";
		search = "";
	}else{
		where = request.getParameter("where");
		search = " like " + "'%" + request.getParameter("search")+"%'";
	}
	//PreparedStatement ps = null; //요즘은 다 프리페어스테이트먼트 쓴다 (보안상) 
	//prepare는 insert update, delete에서만 사용
	String whereStatement ="select seqno, name, telno, address, email, relation from userinfo" + where + search;
	int cnt = 0;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //package 이름임
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); // 어디로 갈거다, 나누구다 패스워드 뭐다
		Statement stmt_mysql = conn_mysql.createStatement();
		
		
		//값을 세팅한다 DB에서 이미 찾아놓음
		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		//table로 table 열 이름 만들어주기 위해 잠시 끊고 html 사용
		
%>
		<table border="1">
			<tr>
				<th>Seq</th><th>이름</th><th>전화번호</th><th>주소</th><th>전자우편</th><th>관계</th>
			</tr>
		
<% 
		while(rs.next()){
							//아래
							// 하이퍼링크로 불러오는 부분 / 화면에 보이는 부분 (rs.getString이 2개인 이유)
							//하이퍼 링크는 꼭 키값으로 주기!
%>		

		<tr>
			<td><a href = "ABQuery.jsp?seqno=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
		</tr>
		
<%

		cnt++;
		}
%>		
		</table>
<%
		
		conn_mysql.close();
		
	
	}catch(Exception e){
		e.printStackTrace(); 
		
	}
		
%>
	
	<input type="submit" value="입력">
--------------------------------------------------------	
		<br><br>
		총 인원은 <%=cnt %>명 입니다.
			
	
	
	
</body>
</html>