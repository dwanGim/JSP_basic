package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

/**
 * Servlet implementation class BoardUpdateForm
 */
@WebServlet("/boardUpdateForm")
public class BoardUpdateForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String boardNum = request.getParameter("board_num");
		BoardDAO dao = BoardDAO.getInstance();
		BoardVO board = dao.getBoardDetail(Integer.parseInt(boardNum));
		
		request.setAttribute("board", board);
		System.out.println(board);
		
		RequestDispatcher dp = request.getRequestDispatcher("/board/boardUpdateForm.jsp");
		
		dp.forward(request, response);
	
	}

}
