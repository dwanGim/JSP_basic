<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% System.out.println("콘솔에 메세지를 찍을 떄는 System.out.println()을 씁니다."); 
	out.println("콘솔이 아닌 브라우저 화면에 메세지를 찍을 때는 out.println()을 씁니다.");%>
	<h2>구구단 2단</h2><hr/>
	<%
		// 구구단 2단을 브라우저에 출력해주세요.
		for(int i = 1; i < 10; i++) {
			out.println("<h1>" + 2 + " * " + i + " = "+ (i*2) + "</h1><hr>");
		}
	%>
	<hr/>
	<!-- 반복문과 조건문을 이용하여 구구단 홀수단(3, 5, 7, 9)을 화면에 출력해주세요. -->
	<%
	
	for(int i = 2; i < 10; i++) {
		for (int j = 1; j < 10; j++) {
			if(i % 2 == 1) {
				out.println("<h1>" + i + " * " + j + " = "+ (i*j) + "</h1>");
			}
			
		}
		out.println("<hr>");
	}
	
	%>
</body>
</html>