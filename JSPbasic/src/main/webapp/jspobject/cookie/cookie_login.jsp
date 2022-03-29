<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 로그인을 이미 한 사용자가 로그인 창으로 다시 접근할 경우
	// login_ok.jsp로 강제로 이동시켜서 로그인 창이 안보이게 해주세요.
	// 힌트 : login_id
		Cookie[] cookies = request.getCookies();
		String cookieName = null;	
	
		if (cookies != null) {
			for (Cookie cookie : cookies) { 
				System.out.println(cookie.getName());
		 		cookieName = cookie.getName();
		 		if((cookieName != null) && (cookieName.equals("login_id"))) {
		 		response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/cookie/login_ok.jsp");
		 		}
			}
		}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	form 을 이용해
	목적지 : cookie_check.jsp, 메서드 : post
	name:id, name:pw 를 submit 버튼을 통해 전달합니다.
	 --%>
	 <form action="http://localhost:8181/JSPbasic/jspobject/cookie/cookie_login_check.jsp" method="post">
		<input type="text" name="id" placeholder="아이디를 입력해주세요"><br/>
		<input type="password" name="pw" placeholder="비밀번호를 입력해주세요"><br/>
		<input type="submit" value="확인">
	</form>
	
</body>
</html>