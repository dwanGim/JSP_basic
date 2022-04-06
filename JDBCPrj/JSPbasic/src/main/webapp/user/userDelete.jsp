<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
	request.setCharacterEncoding("UTF-8");
	String uId = (String)session.getAttribute("s_id");
	String sPw = (String)session.getAttribute("s_pw");
	String uPw = request.getParameter("uPw");
	if (uId != null) {
	response.sendRedirect("userLoginForm.jsp");
	}
	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	
	
	
	try {
		Class.forName(dbType);
	
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);

		String sql = "DELETE FROM userinfo where user_id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);		
		pstmt = con.prepareStatement(sql);
		
		
		
		if (sPw.equals(uPw)){
			pstmt.setString(1, uId);
			pstmt.executeUpdate();
			session.invalidate();
			response.sendRedirect("userLoginForm.jsp");
					
		} else {
			out.println("비밀번호가 일치하지 않습니다.");
			response.sendRedirect("userDeleteForm.jsp");
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