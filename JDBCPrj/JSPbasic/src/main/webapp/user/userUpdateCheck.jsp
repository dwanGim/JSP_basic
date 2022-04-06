<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
	request.setCharacterEncoding("UTF-8");
	
	String uId = request.getParameter("userId");	

	if (uId == null) {
	response.sendRedirect("userLoginForm.jsp");
	}

	
	String updatePw = request.getParameter("userPw");
	String updateName = request.getParameter("userName");
	String updateMail = request.getParameter("userMail");
	
	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";

	
	try {
		Class.forName(dbType);
	
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);

		String sql = "UPDATE userinfo SET user_pw = ?, user_name = ?, email = ? WHERE user_id = ?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		
		pstmt.setString(1, updatePw); 
		pstmt.setString(2, updateName); 
		pstmt.setString(3, updateMail);
		pstmt.setString(4, uId);
		pstmt.executeUpdate();
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
		<row>
		<div class="col-sm-6">
			<p><strong><%= uId %>님의 회원정보가 수정완료되었습니다.</strong></p>
			<a href="loginWelcome.jsp">홈페이지로</a>
		</div>
	</row>

</body>
</html>