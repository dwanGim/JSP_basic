<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uId = request.getParameter("userId");
	String uPw = request.getParameter("userPw");
	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	
	ResultSet rs = null;
	
	try {
		Class.forName(dbType);
	
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
		
		String sql = "SELECT*FROM userinfo WHERE user_id = ?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		

		pstmt.setString(1, uId);
		
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){			
			String dbId = rs.getString(1);
			String dbPw =  rs.getString(2);
			String dbName = rs.getString(3);
			String dbMail =  rs.getString(4); 

			if(uPw.equals(dbPw)) {
				session.setAttribute("s_id", uId);	
				response.sendRedirect("http://localhost:8181/JSPbasic/user/loginWelcome.jsp");
				
				} else {
						response.sendRedirect("http://localhost:8181/JSPbasic/user/userPwFail.jsp");
				}
		
			} else {
				response.sendRedirect("http://localhost:8181/JSPbasic/user/userIdFail.jsp");
			}
			
		
	} catch(Exception e){
		e.printStackTrace();
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