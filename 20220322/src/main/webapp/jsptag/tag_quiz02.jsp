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
	int pcount = 0;

%>
<%
	pcount++;

	if (pcount % 10 == 0) {
		out.println("축하드려요 ~ 기프티콘에 당첨되셨습니다!!<br>");
	}

%>

	페이지 누적 요청 수 : <b><%=pcount %></b><br>
	매 10번째 방문자에게는 기프티콘을 드립니다.
	



</body>
</html>