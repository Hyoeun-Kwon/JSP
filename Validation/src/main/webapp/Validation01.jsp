<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		alert("아이디 : " + document.loginForm.id.value + "\n" +
				"비밀번호 : " + document.loginForm.passwd.value);
	}
	
</script>
<body>
	<form name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<input type="submit" value="전송" onclick="CheckForm()">
	
	</form>
<% //jsp에서는 page를 무조건 submit으로 넘기게 되어있음 그치만 한페이지에서 보고싶음
//----->그때 사용하는게 Japascript -보통 바디위에 적음
//function은 보통 메소드라고 생각하면 됨

//form에서 action말고 변수이름을 준다
//javascript는 소스 보임!(조심)-좋진 않다 , JSP는 Tomcat이 처리해주므로 안보였음
%>



</body>
</html>