<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>

	<!-- 테이블과 예쁘게 보이는 부분 , data는 어레이리스트에 담겨져 있음, items는 Listcommand가 이름 줌 list라고-->
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>내용</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td><a href="content_view.do?bId=${dto.bId }">${dto.bTitle}</a></td>
			<td>${dto.bDate}</td>	
		</tr>
		</c:forEach>
		
		<!-- 테이블 아래 입력 만들기 -->
		<tr>
			<td colspan="4"><a href="write_view.do">글작성</a></td>
		</tr>
		
	</table>

</body>
</html>