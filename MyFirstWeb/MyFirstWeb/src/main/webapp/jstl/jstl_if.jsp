<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%-- 페이지 내부에서 c태그 라이브러리를 써서 태그화 하고 싶다면 디렉티브를 이용해 선언해줍니다. --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<!-- name이 홍길동으로 들어오는 경우만 화면에 "파라미터로 들어온 값은 홍길동 입니다"
	라고 출력되는 body 태그를 작성해보겠습니다. -->
	<!-- 비교식 ==을 원래 사용했지만, -->
	<div class="container">
		<div class= "col-sm-8">
			<c:if test="${param.name eq '홍길동'}">
				<c:out value="name 파라미터에 들어온 값은 홍길동입니다."/><br/>
			</c:if>
			<c:if test="${param.name eq '이순신' }">
				<c:out value="name 파라미터에 들어온 값은 ${param.name }입니다."/><br/>
			</c:if>
			
			<!-- 변수를 선언하는데 스크립트릿 대신 c:set을 이용해보겠습니다. -->
			<c:set var="fName" value="${ param.name}" />
			<c:out value="당신이 입력한 값은 ${fName }입니다."/><br/>
			당신이 입력한 값은 ${fName }입니다.
			<c:set var="NName" value="${param.nick }"/>
			<p>닉네임 : ${NName}</p>
			
		</div>
	</div>
</body>
</html>