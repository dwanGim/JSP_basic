package kr.co.ict;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.do")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("*.do 패턴이 감지되었습니다.");
			// .test 왼쪽에 오는 문자를 감지하는 방법
			String uri = request.getRequestURI();
			System.out.println("감지된 패턴 : " + uri);
			
			// 문제 : naver.do 로 접속 시 네이버로 리다이렉트
			
			// daum.do로 접속 시 다음으로 리다이렉트
			
			// youtube.do로 접속 시 유튜브로 리다이렉트
			
			// 이외의 패턴으로 접속 시 google.com으로 리다이렉트
			if(uri.equals("/MyFirstWeb/naver.do")) {
				response.sendRedirect("https://www.naver.com/");
			} else if (uri.equals("/MyFirstWeb/daum.do")) {
				response.sendRedirect("https://www.daum.net/");
			} else {
				response.sendRedirect("https://www.google.co.kr/");
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
