package com.jsplec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.BCommand;
import com.jsplec.bbs.command.BContentCommand;
import com.jsplec.bbs.command.BDeleteCommand;
import com.jsplec.bbs.command.BListCommand;
import com.jsplec.bbs.command.BModifyCommand;
import com.jsplec.bbs.command.BWriteCommand;



//지시자 , 청와대 같은거임 ---> 지시 내리면 command (메소드)로 감

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")  //.do 는 무조건 controller로 감
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet"); // syso로 해놔야 나중에 어디로 들어와서 오류가 생겼는지 알기 쉬움
		actionDo(request, response); //어디서 리퀘스트/ 리스폰스했는지 받아서 가져가야함 (get/post 둘다 들어오면 actiondo 실행하겟다
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionDo(request, response);
		
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo()");
		
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI(); //실행시 나오는 8080 뒤에 부분만 나옴
		String conpath = request.getContextPath(); //뒤에 sratr.do 같은것들을 빼고 나옴
		String com = uri.substring(conpath.length());//start.do 라는 것만 남음 
		
		String viewPage = null;
//		System.out.println(uri);
//		System.out.println(conpath);
//		System.out.println(com);  
		BCommand command = null;
		
		
		switch(com) {
		
		case("/list.do"): 
			//BlistCommand까지 끝나고 
			System.out.println("listdo분기"); 
			command = new BListCommand();   //입력 커맨드 만들고 (BList로 )
			command.execute(request, response);
			//------
			viewPage = "list.jsp"; //끝나면 jsp로 보내라! 
			//그러면 jsp는 list를 가지고 쪼개서 화면에 보여줌
			break;
			//실행하면 데이터를 불러서 화면에 찍어 줌 (list.do)
		//--------	
		case("/write_view.do"):	
			viewPage = "write_view.jsp";
			break;
		//입력 화면만 띄우면 됨 (디비 갈 필요 없음)  입력전에 빈화면 띄우기
			
		case("/write.do"):
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do";
			break;
		//content_view 실행위해 먼저 만듬 
			//그러면 BContentCommand djqtrh 
		case("/content_view.do"):
			command = new BContentCommand();
			command.execute(request, response); //여기까지가 BContentCommand임
			
			viewPage = "content_view.jsp";
			break;
			
		//수정 
			case("/modify.do"):
				command = new BModifyCommand();
				command.execute(request, response);
				viewPage = "list.do";
				break;
				
		//삭제 
			case("/delete.do"):
				command = new BDeleteCommand();
				command.execute(request, response);
				viewPage = "list.do";
				break;		

			
		}//switch
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response); //forward 형태로 request, response 를 가지고 날아감
		
	}

	
} // ------

