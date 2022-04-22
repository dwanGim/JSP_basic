<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
	request.setCharacterEncoding("UTF-8");
	String userId = (String)session.getAttribute("s_id");
	System.out.println(userId);
	
	if (userId == null) {
		response.sendRedirect("userLoginForm.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong><%= userId %>님 로그인을 환영합니다.</strong></p>
	<p><strong><a href="http://localhost:8181/JSPbasic/user/userLogout.jsp">로그아웃하기</a></strong></p>
	<p><strong><a href="userUpdateForm.jsp">회원정보수정</a></strong></p>
	<p><strong><a href="userDeleteForm.jsp">회원탈퇴하기</a></strong></p>
	
</body>
</html>