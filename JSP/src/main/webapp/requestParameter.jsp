<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력 결과</title>
</head>
<body>
	
<%
	request.setCharacterEncoding("uft-8");
	//radio 버튼은 꼭 배열 아니어도 됨 (왜? 값을 하나만 가져오기 때문 ) 
	String name, id , pw ,majorOne, protocol;    //화면은 문자이므로 다 String으로 받는다.
	//hobby는 체크박스라 값이 여러개 올수도 있으므로 배열사용
	String[] hobbies, majors;
	
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	
	hobbies = request.getParameterValues("hobby");  //Form에서 value값으로 구분해서 가져올거야  //체크된것만 배열로 들어옴, 아무것도 체크 없으면 null
	majors = request.getParameterValues("major");
	majorOne = request.getParameter("major");
	protocol = request.getParameter("protocol");
	
%>
	
	이름 : <%=name %> <br>
	아이디 : <%=id %> <br>
	패스워드 : <%=pw %> <br>
	취미 : <%=Arrays.toString(hobbies) %> <br>
	전공 : <%=Arrays.toString(majors) %>
	전공2 : <%=majorOne %> <br>
	protocol : <%=protocol %>
	
</body>
</html>