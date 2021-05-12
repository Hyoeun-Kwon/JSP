package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

public class BDeleteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//bId는 수정하지 않지만 가져와서 확인용으로 사용
		String bId = request.getParameter("bId");
	
		
		BDao dao = new BDao();
		dao.delete(bId);
	}

}
