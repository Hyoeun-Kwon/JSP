package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;


public class BListCommand implements BCommand {
		// 계속 request와 response 가지고 이동 인터페이스를 상속 
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("blistcommand-execute");
		// TODO Auto-generated method stub
		//DB에서 전체정보 읽어서 attribute로 jsp에 전달하기**
		
		
		BDao dao = new BDao();
		ArrayList<BDto> dtos  = dao.list(); //arraylist 만든것  -----> 이제 jsp 로 줘야함
		//리퀘스트로 줄게
		request.setAttribute("list", dtos);
		
	}

}//BCommand
