
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
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
	// 날짜를 표시할 때 자바의 Date 객체를 사용했는데. JSP페이지에서도 그대로 쓸 수 있습니다.
	// 단 import를 해야합니다.
	// 직접 디렉티브 구문을 적어넣을 수도 있고
	// ctrl + space 자동완성을 통해 완성구문을 골라 넣을 수도 있습니다.
	
	Date date = new Date();
%>
	현재 시간 정보 : <%= date.getHours() %>시 <%= date.getMinutes() %>분 <%= date.getSeconds() %>초
	<br>
	
	<%
	// 자바 내부 라이브러리라면 뭐든 쓸 수 있고, 컬렉션도 쓸 수 있습니다.
	
	
	List<String> names = new ArrayList<>();
	names.add("허준");
	names.add("홍길동");
	names.add("김철수");
	names.add("박영희");
	
	names.remove(0);
	names.remove("홍길동");
	names.clear();
	
	// out.println("맴버 목록 : " + names + "<br/> ");
	%>
	맴버 목록 : <%=names %><br/>
	

</body>
</html>