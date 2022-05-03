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
<div class = col-sm-5>
	<form action = "http://localhost:8181/MyFirstWeb/user/userLoginForm.jsp" method = "post">
		<input type="text" class="form-control form-control-lg" name="userId" placeholder="아이디를 적어주세요.">
		<input type="submit" value="확인" class="btn btn-primary mb-3">
	</form>
</div>

</body>
</html>