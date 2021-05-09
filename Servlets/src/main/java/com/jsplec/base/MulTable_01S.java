package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class MulTable_01S
 */
@WebServlet("/MulTable_01S")
public class MulTable_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
//	int inputNum = 0;    // ------- 한번 줘보자!
	
	 //-----------------------------Constructor
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MulTable_01S() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    
//    public MulTable_01S(int inputNum) {
//		super();
//		this.inputNum = inputNum;
//	}



	//-----------------------------Method
    
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		int dan = Integer.parseInt(request.getParameter("num1"));
		
//		for(int i=1; i<=9; i++) {
//			System.out.println(inputNum + " X "  + i + " = " +(inputNum * i));
//		}
		
		
		
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		for(int i=1; i<=9; i++) {
		writer.println(dan+" X " + i + " = " +(dan * i)+"<br>");
		
		}
		
		writer.println("</body>");
		writer.println("</html>");
		
		
	}//dopost end

	
	
	
}//end
