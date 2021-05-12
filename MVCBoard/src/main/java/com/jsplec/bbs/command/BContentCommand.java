package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// 제일먼저 jsp가 준 id 값을 가져와야함
		String bId = request.getParameter("bId");
		
		BDao dao = new BDao();
		BDto dto = dao.contentView(bId); // 그러면 디티오에 데이터가 쌓일거임
		
		request.setAttribute("content_view", dto); //디티오 데이터를 메모리에 넘겨놓을게 jsp야 가져가 (controller가 처리할거임)

	}

}
