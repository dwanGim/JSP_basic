<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 회원 수정페이지는
	// 비번, 이름, 이메일을 수정할 수 있는 페이지입니다.
	// 이름, 이메일은 이미 내가 가입했던 정보가 채워져야합니다.
	request.setCharacterEncoding("UTF-8");
	String uId = (String)session.getAttribute("s_id");
	
	if (uId == null) {
	response.sendRedirect("userLoginForm.jsp");
	}
	
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	
	ResultSet rs = null;
	
	try {
		Class.forName(dbType);
	
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);

		String sql = "SELECT * FROM userinfo WHERE user_id = ?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		pstmt.setString(1, uId);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			rs.getString(1);
			rs.getString(2);
			rs.getString(3);
			rs.getString(4);
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
	<row>
		<div class="col=sm=6">
			<% 			%>
			<p><strong><%=rs.getString(1)%> 회원님,  정보 수정을 하시겠습니까?</strong></p><br/>


		</div>
	</row>
	<row>
		<div class="col-sm-6">
		<form action="userUpdateCheck.jsp" method="post">
			<input type="hidden" name="userId" value = "<%=rs.getString(1) %>">
			비밀번호 : <input type="password" name="userPw" placeholder="수정할 비밀번호를 입력해주세요." class="form-control form-control-lg">
			이름 : <input type="text" name="userName" placeholder="수정할 이름을 입력해주세요." value = "<%= rs.getString(3) %>" class="form-control form-control-lg">
			이메일 : <input type="text" name="userMail" value ="<%=rs.getString(4) %>"placeholder="수정할 이메일을 입력해주세요." class="form-control form-control-lg">
			<input type="submit" value="수정하기" class="btn btn-primary mb-3">
			<a href="userLoginForm.jsp">뒤로가기</a>
		</form>
		</div>
	</row>

			

</body>
</html>