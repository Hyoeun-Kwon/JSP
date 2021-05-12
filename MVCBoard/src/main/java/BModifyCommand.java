import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.BCommand;
import com.jsplec.bbs.dao.BDao;

public class BModifyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("수정 해라");
		// TODO Auto-generated method stub
		String bId = request.getParameter("bId");
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BDao dao = new BDao();
		dao.modify(bId, bName, bTitle, bContent);
		
		
		
		
	}

}
