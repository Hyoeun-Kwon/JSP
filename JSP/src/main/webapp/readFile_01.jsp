<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	BufferedReader reader = null; //클라스 임 ! 
	try{
		String filepath = application.getRealPath("file.txt");//파일 정확한 위치 어디야?
		reader = new BufferedReader(new FileReader(filepath)); //여기서 객체 생성해줄거야!
		//FileReader C: 생각(어디), filepath는 파일 정확 위치(즉 파일 이름), BufferedReader는 내용!
		
		while(true){
			String str = reader.readLine();  //한번에 가져온 것중 한줄씩 꺼내자
			if(str == null) break; //아무것도 없으면 빠지고
			out.print(str + "<br>"); //있으면 화면에 출력해
		}
	}catch(Exception e){
		e.printStackTrace();
		
	}finally{
		try{
			reader.close();
		}catch(Exception e){
		e.printStackTrace();	
		}
	}



%>




</body>
</html>