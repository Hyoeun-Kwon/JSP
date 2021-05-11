<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm		
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요!");
			form.id.focus();
			return false;
		}else if(form.passwd.value == ""){
			alert("비밀번호를 입력해 주세요!");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}

</script>

<body>

	<form name="loginForm" action="validation02_Process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<input type="button" value="전송" onclick="checkLogin()">
	
	</form>

<%//자바스크립트는 트리구조다!?
//form의 액션 : 값을 날려줌. name 은 변수이름으로 자바스크립트 할때 사용
//var form 을 통해 document.loginForm을 form으로 짧게 쓸수 있다
//function은 메소드 먼저 checkLogin() 써두고 메소드 쓰듯이 스크립트 만들자
//아이디가 입력되지 않았을때 얼러트 주고 , return false 하면 바로 action으로 넘어가지 않도록 해보자
		//어? 안되네? ---> form.id.focus해보자, 안되네 form.submit해보자 안되네?
		//form.submit이 submit하게 하고, 원래 전송버튼에 줬던 submit을 button으로 주기		
//자바스크립트는 alert 사용때만 써주자 (me)		
%>

</body>
</html>