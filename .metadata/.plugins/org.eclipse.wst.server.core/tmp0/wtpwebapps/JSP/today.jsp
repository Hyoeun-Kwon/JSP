<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
//공통사항 작성  ---단독으로 사용하기 위해서 html부분 없애주기
	
	GregorianCalendar now = new GregorianCalendar();


%>

	현재일은 <%=String.format("%TY년 %Tm월 %Td",now, now, now) %> 입니다.
	

	<hr>
	---------Quiz
	<br>
<%
	GregorianCalendar todaytime = new GregorianCalendar();
	

%>
	현재일은 <%=String.format("%TY년 %Tm월 %Td일", todaytime, todaytime , todaytime) %> 입니다. <br>
	현재 시각은 <%=String.format("%TH시간 %TM분 %TS초", todaytime, todaytime , todaytime) %> 입니다.


