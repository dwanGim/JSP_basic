<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-sm-8">
		<c:set var="lang" value="${ param.lang}" />
		<c:choose>
			<c:when test="${lang eq '자바' }">
				<p>자바 재밌습니다.</p>
			</c:when>
			<c:when test="${lang eq '파이썬'}">
				<p>파이썬 아시는구나.</p>
			</c:when>
			<c:otherwise>
				<p>다른 건 모르겠습니다.</p>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>