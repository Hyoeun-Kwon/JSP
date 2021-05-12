package com.jsplec.bbs.command;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.BCommand;
import com.jsplec.bbs.dao.BDao;

public class BWriteCommand implements BCommand {
	
	
	// 모든 커맨드는 무조건 request 랑 response 가지고 다님
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//jsp에서 만든 request임
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BDao dao = new BDao();
		dao.write(bName, bTitle, bContent);
		
	}

}
