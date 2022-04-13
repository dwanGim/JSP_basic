package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletCustom
 */
@WebServlet("/spring")
public class ServletCustom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCustom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("/spring 최초접속");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("/spring 자료가 서버 종료로 파기됩니다.");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/spring 접속감지");
		// request.getParameter()를 이용해
		// jsp, boot라는 이름으로 들어오는 요소를 콘솔을 찍도록 아래에 작성하고
		// doGet() 메서드를 저에게 복사해서 보내주세요.
		
		String js = request.getParameter("jsp");
		String bo = request.getParameter("boot");
		
		System.out.println(js);
		System.out.println(bo);
		
		// 들어온 데이터를 콘솔이 아닌 결과페이지에 출력해보겠습니다.
		// 리다이렉트는 페이지만 이동하고 데이터를 같이 전송하지 않아요.
		// response.sendRedirect("http://localhost:8181/MyFirstWeb/servletForm/sprinResult.jsp");
		
		// 데이터를 결과페이지로 보내기 위해 포워딩이라는 방식을 써야합니다.
		// 포워딩 절차 1. 보내고 싶은 데이터를 request.setAttribute("저장명", 자료); 형식으로 저장
		request.setAttribute("jsp", js);
		request.setAttribute("boot", bo);
		
		// request.setAttribute로 실어놓은 변수를 결과페이지로 보내기 위해 forward를 대신 사용합니다.
		// 목적지 주소는 http://localhost:8181/MyFirstWeb을 생략한 나머지 주소만 적어도 좋습니다.
		// 예)/servletForm/sprinResult.jsp
		
		// 포워딩 절차 2. RequestDispatcher 생성
		RequestDispatcher dp = request.getRequestDispatcher("//servletForm/sprinResult.jsp");
		// 포워딩 절차 3. forward(request, response); 실행하면 페이지가 넘어가면서 변수들도 함께 감. 김기태감독님 동행야구임.
		dp.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
