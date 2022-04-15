<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="2" end="9" var="dan">
		<c:if test="${dan%2==0}">
			<c:out value="${dan} 단을 출력합니다."/><br/>
			<c:forEach begin="1" end="9" var="gugu">
				<c:out value="${dan} * ${gugu} = ${dan*gugu}"/><br/>
			</c:forEach>
		<hr/>
		</c:if>
	</c:forEach>
	
	
	
	<c:forEach begin="2" end="9" var="dan">
		<c:if test="${dan%2!=0}">
			<c:out value="${dan} 단을 출력합니다."/><br/>
			<c:forEach begin="1" end="9" var="gugu">
				<c:out value="${dan} * ${gugu} = ${dan*gugu}"/><br/>
			</c:forEach>
		<hr/>
		</c:if>
	</c:forEach>


</body>
</html>