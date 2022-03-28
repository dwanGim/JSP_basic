<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String list = request.getParameter("playlist");
	
%>
<% if (list.equals("list1") ) { %>	
	<% response.sendRedirect("https://www.youtube.com/watch?v=Kd_W6Gkc7Lw&ab_channel=C.ILee"); %>
<% } else if (list.equals("list2")){%>	
	<%response.sendRedirect("https://www.youtube.com/watch?v=Uzqh6dptL4c&ab_channel=C.ILee"); %>
<%} else if (list.equals("list3")) { %>
	<%response.sendRedirect("https://www.youtube.com/watch?v=0CrYRwdVf94&ab_channel=C.ILee"); %>
<% }else { %>
	<p> 다른 곡을 선택하세요.</p>
	<%} %>
	

</body>
</html>