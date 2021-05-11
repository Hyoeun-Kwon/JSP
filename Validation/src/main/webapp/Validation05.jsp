<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규식을 이용한 유효성 검사</title>
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
		}else if(form.name.value == ""){
			alert("이름을 입력해 주세요!");
			form.passwd.focus();
			return false;
		}
		
		// Detail Check
		//아이디 영소문자 + 숫자
		var idCheck = /^[a-z0-9]+$/
		if(!idCheck.test(form.id.value)){
			alert("아이디는 영어 소문자와 숫자로 입력해 주세요.");
			form.id.select();
			return false;
		}
		//패스워드 숫자로만 입력하기
		var pwCheck = /^[0-9]+$/;
		if(!pwCheck.test(form.passwd.value)){
			alert("패스워드는 숫자로 입력해 주세요.");
			form.passwd.select();
			return false;
		}
		
		//이름은 한글로만 입력하기
		var nameCheck = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/; 
		if(!nameCheck.test(form.name.value)){
			alert("이름은 한글로 입력해주세요.");
			form.name.select();
			return false;
		}  
		
		//이메일 
		var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if(!nameCheck.test(form.email.value)){
			alert("이메일 형식을 확인해주세요.");
			form.email.select();
			return false;
		}  

		//모든게 정상으로 처리되면 submit 됨
		form.submit();
	}

</script>



<body>

<h3> 회원 가입</h3>

	<form name="loginForm" action="Validation05_Process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p>이름 : <input type="text" name="name"></p>
		연락처 : <select>
			<option value="010" selected="selected">010</option>
			<option value="011">011</option>
				</select> 
				-
				<input type="text" name="telinput1" size="7" >
				-
				<input type="text" name="telinput2" size="7"> <br>
		<p>이메일 : <input type="text" name="email"></p>
		<input type="button" value="가입하기" onclick="checkLogin()">
	
	</form>


</body>
</html>