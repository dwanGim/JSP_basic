<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String userId = id;
	
	if (id.equals("abc1234")) {
		if(pw.equals("1111")) {
			session.setAttribute("s_id", userId);
			response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/session/session_login_ok.jsp");
		} else {
			System.out.println("비밀번호가 틀렸습니다. 다시 입력해주세요.");
			response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/session/session_pw_fail.jsp");
		}
	} else {
		System.out.println("아이디가 없습니다. 다시 입력해주세요.");
		response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/session/session_id_fail.jsp");
	}
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