<%@page import="com.ict.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
UserVO user = new UserVO();

R

user.setUserId(rs.getString(1));
user.setUserId(rs.getString(2));
user.setUserId(rs.getString(3));
user.setUserId(rs.getString(4));

System.out.println(user.getUserId());
System.out.println(user.getUserPw());
System.out.println(user.getUserName());


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