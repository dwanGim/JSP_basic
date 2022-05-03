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
<!-- post 방식으로 /spring 주소로 보내는 폼을 생성하겠습니다. -->
<div class="container">
	<div class="col-sm-10">
		<form action="http://localhost:8181/MyFirstWeb/spring" method="post">
			<input type="text" name="jsp" placeholder="jsp 값을 입력" class="form form-control-lg"><br/>
			<input type="text" name="boot" placeholder="boot 값을 입력" class="form form-control-lg"><br/>
			<input type="text" name="jpa" placeholder="jpa 값을 입력" class="form form-control-lg"><br/>
			<input type="submit" value="확인" class="btn btn-Info mb-2">
		</form>
	</div>
</div>	

</body>
</html>