<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격테스트</title>
</head>
<body>

<h2>성격 테스트</h2>

<form action="CharacterTest_01S" method="post">

	당신의 성격을 테스트 합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요 <br>
	 <br>
	이름은? <input type="text" name="name"> <br>
	 <br>
	좋아하는 색은? <input type="radio" name="color" value="노랑">노랑
	 			<input type="radio" name="color" value="빨강" >빨강
				<input type="radio" name="color" value="파랑" checked="checked">파랑<br>
	 <br>
	좋아하는 동물은? 
		<select name="animal">
			<option value="거북이" selected="selected">거북이</option>	
			<option value="고양이">고양이</option>	
			<option value="강아지">강아지</option>	
		
		</select><br>
	<br>
	좋아하는 음식은? (모두 고르세요)
			<input type="checkbox" name="food" value="짜장면">짜장면
			<input type="checkbox" name="food" value="짬뽕" checked="checked">짬뽕
			<input type="checkbox" name="food" value="탕수육" checked="checked">탕수육 <br> 
	<br>
	<input type="submit" value="확인">	
	
	</form>



</body>
</html>