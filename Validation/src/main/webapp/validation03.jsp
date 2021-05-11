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
		// Empty Check
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요!");
			form.id.focus();
			return false;
		}else if(form.passwd.value == ""){
			alert("비밀번호를 입력해 주세요!");
			form.passwd.focus();
			return false;
		}
		
		// Length Check
		if(form.id.value.length < 4 || form.id.value.length >12){
			alert("아이디는 4~12자리 이내로 입력 가능 합니다.");
			form.id.select();
			return false;
		}
		
		if(form.passwd.value.length < 4){
			alert("비밀번호는 4자 이상으로 입력 해야 합니다.");
			form.passwd.select();
			return false;
		}
		//모든게 정상으로 처리되면 submit 됨
		form.submit();
	}

</script>

<body>

	<form name="loginForm" action="validation03_Process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<input type="button" value="전송" onclick="checkLogin()">
	
	</form>

<%	
//글자 수 제한 !
//자바스크립트는 트리구조 (= finder) 이다. 이는 . . . 이렇게 사용됨
//focus는 커서만 가고 뭔가 넣엇는게 조금 넣었다? 범위가 잡히도록 select를 넣어주는게 좋음
%>

</body>
</html>