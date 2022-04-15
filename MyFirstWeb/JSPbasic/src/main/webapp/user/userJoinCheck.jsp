<%@page import="com.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
	request.setCharacterEncoding("UTF-8"); 

	String sId = request.getParameter("s_id");
	if (sId != null) {
	response.sendRedirect("userLoginForm.jsp");
	}

	String uId = request.getParameter("userId");
	String uPw = request.getParameter("userPw");
	String uName = request.getParameter("userName");
	String uMail = request.getParameter("userMail");
	
	
	UserDAO dao = UserDAO.getInstance();	
	dao.userJoinCheck(uId, uPw, uName, uMail);
	/*	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";

	try {
		Class.forName(dbType);
		
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
		
		
		String sql = "INSERT INTO userinfo VALUES(?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, uId);
		pstmt.setString(2, uPw);
		pstmt.setString(3, uName);
		pstmt.setString(4, uMail);
		
		pstmt.executeUpdate();
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong><%= uId %>님 회원가입 감사합니다!</strong></p>
	<p><strong><a href="userLoginForm.jsp">로그인하기</a></strong></p>
	
	

</body>
</html>