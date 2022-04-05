<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong>정말 회원탈퇴하시겠습니까? 비밀번호를 확인해주세요.</strong></p>
	<form action="userOut.jsp" method="post">
		<input type="password" name="userPw" placeholder="비밀번호를 다시 입력해주세요." class="form-control form-control-lg">
		<input type="submit" value="확인" class="btn btn-primary mb-3">
		<a href="loginWelcome.jsp">뒤로가기</a>
	</form>

</body>
</html>