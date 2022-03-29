<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	// 쿠키는 사용자 PC에 설치해두는 것이기 때문에 명시적으로 삭제할 수 없습니다.
 	// 대신 유효시간을 0으로 만들어 삭제하는 것처럼 처리합니다.
 	// login_id 라는 이름의 쿠키가 발견되면
 	// 유효시간을 0으로 만든 다음 cookie_login.jsp로 보내주는 로직을 작성해보겠습니다.
 	
	Cookie[] cookies = request.getCookies();
 	
 for (Cookie cookie : cookies) {
	
	 String cookieName = cookie.getName();
 	
	if(cookieName.equals("login_id")) {
 		cookie.setMaxAge(0);
 		response.addCookie(cookie); // 갱신 발급까지 마쳐줘야합니다.
 		
 	}
 }
 response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/cookie/cookie_login.jsp");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>