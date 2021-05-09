<%@page import="java.io.PrintWriter"%>
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
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");//""없으면 한번띄어쓰고 그 뒤 인식 안함
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	String filename ="file.txt";
	

	PrintWriter writer = null;
	
	
	try{
		String filePath = application.getRealPath("/" + filename);
		writer = new PrintWriter(filePath);
		writer.println("제목 :" + title);
		writer.println("글쓴이 :" + name);
		writer.println(content);
		out.print("저장 되었습니다.");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			writer.close();   // 꼭 닫아줘야함
		}catch(Exception e){
			e.printStackTrace();
		}
	}

%>	
	






</body>
</html>