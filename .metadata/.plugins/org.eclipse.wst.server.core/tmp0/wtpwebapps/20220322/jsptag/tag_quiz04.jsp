
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays" %>
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
	List<Integer>loNum = new ArrayList<>();
	int getNum = 0;
	
	while (loNum.size() !=6 ) {
		
		getNum = (int)(Math.random() * 45) + 1;
		
		if (!loNum.contains(getNum)) {
			loNum.add(getNum);
		}
	}
	
	Collections.sort(loNum);
	
%>
	<p>
	오늘의 로또 행운번호는?<br>
	
	<%= loNum %><br/>
	
	<%
		for (Integer num : loNum) {
			out.println(num + "&nbsp;");
			Thread.sleep(700); // CPU를 잠시 멈추는 메서드
			out.flush(); // 브라우저의 출력 버퍼를 비우는 메서드.
		}
	
	%>
	</p>
</body>
</html>