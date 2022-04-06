<%@page import="com.ict.domain.UserVO"%>
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
	
	// ResultSet의 데이터를 자바 클래스로 교체할 수 있도록 UserVO 생성
	UserVO user = new UserVO(); 
	
	try {
		Class.forName(dbType);
	
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
		
		String sql = "SELECT*FROM userinfo WHERE user_id = ?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		

		pstmt.setString(1, uId);
		
		
		rs = pstmt.executeQuery();
		
	
		if(rs.next()){	
			
			user.setUserId(rs.getString(1));
			user.setUserPw(rs.getString(2));
			user.setUserName(rs.getString(3));
			user.setEmail(rs.getString(4));
			
			System.out.println(user.getUserId());
			System.out.println(user.getUserPw());
			System.out.println(user.getUserName());
			System.out.println(user.getEmail());
			String dbPw = user.getUserPw();
			
			
			
			if(uPw.equals(dbPw)) {
				session.setAttribute("s_id", uId);
				session.setAttribute("s_pw", dbPw);
				response.sendRedirect("http://localhost:8181/JSPbasic/user/loginWelcome.jsp");

				
				} else {
				response.sendRedirect("http://localhost:8181/JSPbasic/user/userPwFail.jsp");
				}
		
				} else {
				response.sendRedirect("http://localhost:8181/JSPbasic/user/userIdFail.jsp");
				}

			rs.close(); // ResultSet, Connection, PreparedStatement는 .close();로 닫을 수 있음	
		
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