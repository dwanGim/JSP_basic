<%@page import="com.ict.domain.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
	// 아래쪽에 원래 작성된 접속 로직 저장되어 있음
	UserDAO dao = UserDAO.getInstance();
	List<UserVO> userList = dao.getAllUserList(); // DB연결해 전체 목록 가져다 주고 종료.
	out.println("DAO에서 전달받은 자료들 : " + userList);
	
%>

<%	/*
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?severTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	
	// try 블럭이 닫히는 순간, 내부에서 최초로 선언된 변수들도 다 사라짐
	// 그래서 body 태그에서 출력해야하는 필수 요소는 try 진입 전 선언해놔야함
	
	ResultSet rs = null;
			
	try {
		Class.forName(dbType);
		
		Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
		
		
		String sql = "SELECT * FROM userinfo";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
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
<div class="container">
	<div class="col-sm-10">
		<table class = "table table-primary table-striped">
			<thead>
				<tr>
					<th>유저 아이디</th>
					<th>패스워드</th>
					<th>유저 이름</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>
				<%for(UserVO user :  userList) { %>
				<tr>
					<td><%= user.getUserId() %></td>
					<td><%= user.getUserPw() %></td>
					<td><%= user.getUserName() %></td>	
					<td><%= user.getEmail() %></td>	
				</tr>
				<%} %>
			</tbody>
			
		</table>
	</div>
</div>
</body>
</html>