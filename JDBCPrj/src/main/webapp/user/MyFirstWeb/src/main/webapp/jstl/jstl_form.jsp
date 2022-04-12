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
	<div class="container">
	<!-- jstl_if.jsp를 목적지로 하는 폼을 만들겠습니다. 
	jstl_if.jsp에서 c:set을 이용해 변수를 저장할 때 필요한 요소를 하나 더 추가하겠습니다.-->
		<div class="col-sm-8">
			<form action="jstl_if.jsp" method="post">
				<input type="text" name="name" class="form-control-lg" placeholder="이름을 입력해주세요"><br/>
				<input type="text" name="nick" class="form-control-sm" placeholder="닉네임을 입력해주세요."><br/>
				<input type="submit" value="확인" class="btn btn-success mb-2">
			</form>
		</div>
	</div>
</body>
</html>