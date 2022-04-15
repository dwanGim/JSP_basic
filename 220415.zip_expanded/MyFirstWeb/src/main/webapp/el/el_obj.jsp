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
	<!--  목적지가 el_obj_ok.jsp인 폼을 만들어보겠습니다. -->
<row>
	<div class = "col-sm-8">
		<form action="el_obj_ok.jsp" method="post">
			<input type="text" name="name" placeholder="이름을 입력해주세요" class="form-control form-control-lg">
			<input type="text" name="nick" placeholder="별명을 입력해주세요" class="form-control form-control-lg">
			<input type="submit" value="확인" class="btn btn-success mb-3">
		</form>
	</div>
</row>
	
</body>
</html>