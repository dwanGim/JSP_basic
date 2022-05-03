package kr.co.ict.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

public class BoardDeleteService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		
		String sId = (String)session.getAttribute("s_id");
		
		
		String boardWriter = request.getParameter("board_writer");
		
		String boardNum = request.getParameter("board_num");
		
		if (sId != null && sId.equals(boardWriter)) {
			
			BoardDAO dao = BoardDAO.getInstance();
			
			dao.boardDelete(Integer.parseInt(boardNum));

		}

		
	}

}
