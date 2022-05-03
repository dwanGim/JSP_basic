package kr.co.ict;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;
import kr.co.ict.service.BoardDeleteService;
import kr.co.ict.service.BoardDetailService;
import kr.co.ict.service.BoardInsertService;
import kr.co.ict.service.BoardListService;
import kr.co.ict.service.BoardUpdateFormService;
import kr.co.ict.service.BoardUpdateService;
import kr.co.ict.service.IBoardService;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}
	
	protected void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 방식을 처리하는 경우도 생기므로, 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		// 프론트 컨트롤러는 여러 주소 유형을 처리해야하니 uri부터 받아옵니다.
		String uri = request.getRequestURI();
		// 포워딩 시 .jsp 주소의 경로를 미리 저장할 변수
		String ui = null;
		// dao 생성
		BoardDAO dao = BoardDAO.getInstance();
		// 어떤 종류의 서비스라도 다 받을 수 있는 서비스 인터페이스 생성
		IBoardService sv = null;
		
		
		if(uri.equals("/MyFirstWeb/boardList.do")) {
			
			sv = new BoardListService();
			sv.execute(request, response);
			
			ui = "/board/getBoardList.jsp";
			
		} else if (uri.equals("/MyFirstWeb/boardDetail.do")) {
			sv = new BoardDetailService();
			sv.execute(request, response);
			
			ui = "/board/boardDetail.jsp";
			
		} else if (uri.equals("/MyFirstWeb/boardInsertForm.do")) {
			// 로직이 없어서 ui로 넘어가는 것 만으로 충분합니다.
			ui = "/board/boardInsertForm.jsp";
			
		} else if (uri.equals("/MyFirstWeb/boardInsert.do")) {
			
			sv = new BoardInsertService();
			sv.execute(request, response);
			
			ui = "/boardList.do"; // 리다이렉트 시는 폴더명 없이 마지막 주소만 씁니다.
			
		} else if (uri.equals("/MyFirstWeb/boardUpdateForm.do")) {
			
			sv = new BoardUpdateFormService();
			sv.execute(request, response);
			
			ui = "/board/boardUpdateForm.jsp";
			
		
		} else if (uri.equals("/MyFirstWeb/boardUpdate.do")) {
			
			sv = new BoardUpdateService();
			sv.execute(request, response);
			
			ui = "/boardDetail?board_num=" + request.getParameter("board_num");
			
		} else if(uri.equals("/MyFirstWeb/boardDelete.do")) {
			
			sv = new BoardDeleteService();
			sv.execute(request, response);
			
			
			ui = "/boardList.do";
		}
		
		RequestDispatcher dp = request.getRequestDispatcher(ui);
		dp.forward(request, response);
		
	}


}
