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
	<!--  http://localhost:8181/MyFirstWeb/spring을 목적지로 하는 폼을 만들어봅시다.
	jsp, boot라는 이름으로 submit하는 form입니다. -->
<div class="container">
	<div class="col-sm-10">
		<form action="http://localhost:8181/MyFirstWeb/hi">
			<input type="text" name="CF" placeholder="센터 포워드를 입력" class="form form-control-lg"><br/>
			<input type="text" name="DP" placeholder="딥플메를 입력" class="form form-control-lg"><br/>
			<input type="text" name="TG" placeholder="타겟맨을 입력" class="form form-control-lg"><br/>
			<input type="submit" value="확인" class="btn btn-success mb-2">
		</form>
	</div>
</div>	

</body>
</html>