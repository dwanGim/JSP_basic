<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	request.setCharacterEncoding("utf-8");
	
	String photoPick = request.getParameter("photo");
	
	int pho = Integer.parseInt(photoPick);
	
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<% if (pho == 1) {  %>
	<img alt="#" src="./01.jpg">	
<% 	}  else {    %>
	<img alt="#" src="./02.jfif">
<% }                 %>
</div>

	 


</body>
</html>