<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	System.out.println(id + pw);
	
	if (id.equals("abc1234")) {
		if(pw.equals("1111")) {

			String userLogin = (String)session.getAttribute("session_id");
			System.out.println(userLogin);
		} else {
			System.out.println("비밀번호가 틀렸습니다. 다시 입력해주세요.");
			
		}
	} else {
		System.out.println("아이디가 없습니다. 다시 입력해주세요.");
		
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