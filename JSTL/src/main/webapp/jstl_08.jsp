<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%//반복문은 MVC에서 분명히 씀 (arraylist 때문)  foreach는 증가값 쓸 필요 없음 하나씩 늠 
 //검색할때 : 자바에서 어레이리스트에 자바 빈타입으로 넣을거고, 이를 for문 돌려서 화면에 보여줄거임
 //보여줄때는 테이블 ---> <table> 중 <td> 에 table이 들어갈 거임
 
 %>
	<c:forEach	var = "cnt" begin="1" end="5">
		<font size="${cnt }">
			대한민국!
		</font><br>
	
	</c:forEach>

</body>
</html>