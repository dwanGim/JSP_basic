<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	// 로그인 처리를 해보겠습니다.
	// 로그인 아이디는 "abc1234"인 경우만 허용
	// 비밀번호는 "1111"인 경우만 허용하겠습니다. (추후 DB 데이터로 로그인 처리하는 법 배울 것임)
	// 조건문을 이용해 크케 3가지로 나뉩니다.
	// 1. 아이디가 없는 경우 -> login_id_fail.jsp
	// 2. 아이디는 있으나 비밀번호가 틀린 경우 -> login_pw_fail.jsp
	// 3. 아이디와 비밀번호가 모두 일치하는 경우 -> login_ok.jsp
	// 리다이렉트 후에 콘솔 대신 body에 문장을 찍어보겠습니다.
	
	if (id.equals("abc1234")) {
		if(pw.equals("1111")) {
			System.out.println("로그인을 환영합니다.");
			response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/cookie/login_ok.jsp");
		} else {
			System.out.println("비밀번호가 틀렸습니다. 다시 입력해주세요.");
			response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/cookie/login_pw_fail.jsp");
		}
	} else {
		System.out.println("아이디가 없습니다. 다시 입력해주세요.");
		response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/cookie/login_id_fail.jsp");
	}

%>


</body>
</html>