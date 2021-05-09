<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 저장 결과</title>
</head>
<body>
	<h2>파일 저장 결과</h2>
<%	

//처리결과는 안보이고 사용자에게 저장되었다 아니다만 보여주기 위해 나눔! (결과값을 13으로 보내주고, 13에서 결과가 이렇다만 보여주자)
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");//""없으면 한번띄어쓰고 그 뒤 인식 안함
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	String filename ="file.txt";
	

	PrintWriter writer = null;
	String result; //결과 값은 따로 보내주기 위함 (13으로)
	
	try{
		String filePath = application.getRealPath("/" + filename); // 디렉토리처럼 /가 필요함
		writer = new PrintWriter(filePath);
		writer.println("제목 :" + title); //자바 안이라 ln이 먹힘
		writer.println("글쓴이 :" + name);
		writer.println(content);
		result= "success";
	}catch(Exception e){
		result= "fail";
	}finally{
		try{
			writer.close();   // 꼭 닫아줘야함
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	response.sendRedirect("writeFile_13.jsp?result=" + result); //13번으로 result 값이 success나 fail로 날아감
	
%>	




</body>
</html>