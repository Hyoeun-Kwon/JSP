<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date</title>
</head>
<body>
	
<%
//import됨 클래스임)
// 클래스 (C)      인스턴스(I)  =     생성자 (C)
//변수인 now만 메모리로 들어감
	GregorianCalendar now = new GregorianCalendar();

	//now는 많은 데이터를 가지고 있다. 이걸 format을 받아서 바꿔주는 것임   
	String date = String.format("%TF", now); //%TF : yyyy-mm-dd
	String time = String.format("%TT", now); //%TT : hh:mm:ss
	
%>	
	
	오늘의 날짜 : <%=date %><br>	
	현재 시간 : <%=time %><br>	
	<%=String.format("%TY년 %Tm월 %Td",now, now, now) %> <br>
	<%=String.format("%TH시 %TM분 %TS초",now, now, now) %> <br>
	





	
	
	
</body>
</html>