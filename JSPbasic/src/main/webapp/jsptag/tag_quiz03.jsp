<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int total=1;
%>
<%
	int num = (int)(Math.random() * 8) + 2;
%>

<h3>랜덤 구구단 (<%= num %>)</h3>
<br>
<br>
<p>이번에 나올 구구단은 <%= num %>단 입니다.<p>	
<p><% for(int i = 1; i<10; i++){%>
	<%= num %> X <%= i %> = <%= num * i %><br>
	
<% }%>
</p>



</body>
</html>