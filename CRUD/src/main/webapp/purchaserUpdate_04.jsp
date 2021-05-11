<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	사용자 ID : <%=session.getAttribute("USERID") %> <br>
	성명 :  <%=session.getAttribute("NAME") %> <br>
	전화번호 :  <%=session.getAttribute("TEL") %> <br>
	주소 : <%=session.getAttribute("ADDRESS") %> <br>

	<br><br>
	상기의 정보로 수정되었습니다. 감사합니다.

</body>
</html>