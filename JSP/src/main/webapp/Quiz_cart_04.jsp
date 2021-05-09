<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 저장 내용</title>
</head>
<body>
	
<%

	BufferedReader reader = null; 
	try{
		String filepath = application.getRealPath("file.txt");
		reader = new BufferedReader(new FileReader(filepath)); 
		//FileReader C: 생각(어디), filepath는 파일 정확 위치(즉 파일 이름), BufferedReader는 내용!
		
		while(true){
			String str = reader.readLine();  
			if(str == null) break; 
			out.print(str + "<br>");
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