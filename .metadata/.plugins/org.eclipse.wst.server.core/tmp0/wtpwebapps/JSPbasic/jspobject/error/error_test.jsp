<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// try ~ catch 구문을 이용해서 int a = 3/0이 에러가 났을 때
	// 브라우저 화면에 "에러가 발생했습니다."라는 문장이 띄워지도록 코드를 작성해보세요.
	try {
		int a = 3 / 0;
		out.println(a);
	} catch(Exception e){
		out.println("에러가 발생했습니다.");
	}
		
			
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