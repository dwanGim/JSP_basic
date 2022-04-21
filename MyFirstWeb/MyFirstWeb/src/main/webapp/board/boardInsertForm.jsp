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
	<div class="container-lg">
		<div class="col-sm-12">
			<form action="http://localhost:8181/MyFirstWeb/boardInsert" method="post">		
					<div class="col-sm-9">
						<br/>
						<br/>
		  				<label for="title1" class="form-label">제목</label>
		  				<input type="text" name="title" class="form-control" id="title1" placeholder="제목을 적어주세요.">
		  				<br/>
					</div>
					<div class="col-sm-3">
		  				<label for="writer1" class="form-label">글쓴이</label>
		  				<input type="text" name="writer" class="form-control" id="writer1" placeholder="글쓴이를 적어주세요.">
						<br/>
					</div>
				<div class="mb-12">
				 	<label for="textarea1" class="form-label"> 본 문 </label>
					<textarea class="form-control" name="content" id="textarea1" cols="40" rows="20"></textarea>
					<br/>
				</div>
				<br/>
				<input type="submit" value="확인" class="btn btn-success btn-mb-3">
			</form>
		</div>
	</div>
</body>
</html>