package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CharacterTest_01S
 */
@WebServlet("/CharacterTest_01S")
public class CharacterTest_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CharacterTest_01S() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		
		String[] food = request.getParameterValues("food");
		
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>성격테스트</h1>"+"<br>");
		writer.println(name+"님의 성격 테스트 결과"+"<br>");
		writer.println(color+"색을 좋아하는 당신은 " + animal+ " 그리고 ");
		
		
			if(food.length>1) {
				for(int i=0; i<food.length-1; i++) {
					writer.print(food[i] + "과");
				}
			}
			for(int i=food.length-1; i<=food.length; i++) {
				writer.print(food[i] + "을 좋아하는 성격입니다.");
				writer.println("<br>"+"---------------------"+"<br>");
				writer.println("<br>"+"저장되었습니다"+"<br>");
			}
			
		writer.println("</body>");
		writer.println("</html>");
		
		
		System.out.println(name);
		System.out.println(color);
		System.out.println(animal);
	}//

}//end
