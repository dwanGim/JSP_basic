package kr.co.ict.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

public class BoardUpdateFormService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String boardNum = request.getParameter("board_num");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		BoardVO board = dao.getBoardDetail(Integer.parseInt(boardNum));
		
		request.setAttribute("board", board);
			
	}

}
