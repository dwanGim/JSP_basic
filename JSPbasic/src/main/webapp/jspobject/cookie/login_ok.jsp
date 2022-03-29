<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	// 로그인창에 진입했을 떄, log_id 라는 명칭으로 발급된 쿠키가 없을 경우
 	// cookie_login.jsp로 리다이렉트 시켜서 로그인 안한 사람의 접근을 차단.
 	Cookie[] cookies = request.getCookies();
 
 	// 쿠키 목록을 반복문으로 돌려서 "login_id"라는 명칭의 쿠키가 없다면
 	// cookie_login.jsp로 리다이렉트 시키고 있을 때만 아무 행동을 하지 않는
 	// 구문을 작성해보겠습니다.
 	String cookieName = null;
 	
 	// 리다이렉트 여부를 판단해줄 boolean 자료 생성
 	
 	boolean goLogin = true;
 	
 	
 	for (Cookie cookie : cookies) { // 향상된 for문
		System.out.println(cookie.getName());
 		cookieName = cookie.getName();
 		if(cookieName.equals("login_id")) {
 			goLogin = false; // 로그인 절차 확인 시 false로
 			
 		}
 	}
 	
 	if (goLogin) { // (boolean이기 때문에 로그인 절차 확인된 후에는 실행안됨)
 		response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/cookie/cookie_login.jsp");
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 로그인을 환영합니다. </p>
<%-- 이제 위쪽 로직으로 인해 로그인 여부는 쉽게 파악하고 있지만
	반면 로그아웃은 여전히 사용자가 직접 쿠키를 삭제해야 하는 불편함이 있습니다.
	따라서 쿠키가 로그아웃 버튼을 누르면 자동으로 파기되도록 아래 링크를 고쳐보겠습니다.
	logout_ok.jsp로 파일을 생성하고 링크를 교체하겠습니다. --%>
<a href="http://localhost:8181/JSPbasic/jspobject/cookie/logout_ok.jsp">로그아웃</a>
</body>
</html>