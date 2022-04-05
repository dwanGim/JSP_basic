<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uId = (String)session.getAttribute("s_id");
	String uPw = request.getParameter("userPw");
	
	
	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	
	
	
	
	try {
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
		String sql = "DELETE FROM userinfo WHERE user_id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, uId);
		
		pstmt.executeUpdate();
		
		
	} catch(Exception e) {
		
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