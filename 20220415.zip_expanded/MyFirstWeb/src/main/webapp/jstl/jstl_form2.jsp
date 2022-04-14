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
	<!-- jstl_choose.jsp를 목적지로 하는 form태그를 만들어보겠습니다. -->
	<div class="col-sm-10">
		<form action="jstl_choose.jsp" method="post">
			<input type="text" name="lang" placeholder="사용 언어를 입력해주세요." class="form-control-lg"><br/>
			<input type="submit" value="확인" class="btn btn-primary mb-2"><br/>
		</form>
	</div>

</body>
</html>