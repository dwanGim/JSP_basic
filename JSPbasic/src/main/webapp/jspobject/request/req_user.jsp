<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String uId = request.getParameter("uid");
	String uPw = request.getParameter("upw");
	String uName = request.getParameter("uname");
	
	String[] hobby = request.getParameterValues("hobby");
	
	String blood = request.getParameter("blood");
	String region = request.getParameter("region");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%= uName %> <br/>
아이디 : <%= uId %> <br/>
비번 : <%= uPw %> <br/>
취미 : <%= Arrays.toString(hobby) %><br/>
혈액형 : <%= blood %> <br/>
지역 : <%= region %>
</body>
</html>