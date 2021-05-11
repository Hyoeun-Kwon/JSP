<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 식단 메뉴</title>
</head>
<body>
	<%//DB에서 가져올때의 형태!! 그때는 배열대신, 어레이리스트 일거임 items 는 데이타 값 가져옴!! *** %>
	<h3>점심 메뉴표</h3>
		<ul>
			<c:forEach var="dish" items="${MENU }">
				<li>${dish } </li>
			</c:forEach>
		
		</ul>
	
</body>
</html>