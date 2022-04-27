<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String strAge = request.getParameter("age");
	
	int iAge = Integer.parseInt(strAge);


%>
	
<% if (iAge < 20 ) { %>
	<p>20미만이면 미성년자 입니다.</p>		
	<% response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/response/res_kids.jsp"); %>
<% } else {%>	
	<p> 성인입니다. </p>
	<%response.sendRedirect("http://localhost:8181/JSPbasic/jspobject/response/res+adult.jsp"); %>
<%} %>

</body>
</html>