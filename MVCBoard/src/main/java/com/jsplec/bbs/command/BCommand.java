package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BCommand {

	//인터페이스는 공통된 사항을 정의함  , 공통된 메소드 이름을 적겠음
	//다른건 안넣고 이름만 정해줌 (인터페이스는 앱스트랙보다 많이 사용함)
	//이름 + 뭘 가져가는지만 줌
	public void execute(HttpServletRequest request, HttpServletResponse response);
	
	
	
}
