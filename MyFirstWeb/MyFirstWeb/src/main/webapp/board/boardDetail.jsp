<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="col-sm-12">
		<table class = "table table-primary table-striped">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성시간</th>
					<th>수정시간</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${board.boardNum}</td>
					<td>${board.title}</td>
					<td>${board.writer}</td>
					<td>${board.bDate}</td>
					<td>${board.mDate}</td>
					<td>${board.hit}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br/>
	<div class="mb-12">
		<label for="textarea1" class="form-label"> 본 문 </label>
		<textarea class="form-control" name="content" id="textarea1" cols="40" rows="20" disabled readonly>${board.content}</textarea>
		<br/>
	</div>
		<br/>
		<a href="http://localhost:8181/MyFirstWeb/boardList"  class="btn btn-success btn-mb-3">목록으로</a>
	<div>
		<form action= "http://localhost:8181/MyFirstWeb/boardDelete" method="post">
			<input type="hidden" name="board_num" value="${board.boardNum}">
			<input type="submit" class="btn btn-danger btn-mb-3" value="삭제하기">
		</form>
	</div>
	<div>
		<form action= "http://localhost:8181/MyFirstWeb/boardUpdateForm" method="post">
			<input type="hidden" name="board_num" value="${board.boardNum}">
			<input type="submit" class="btn btn-primary btn-mb-3" value="수정하기">
		</form>
	</div>
</div><!-- container end -->
</body>
</html>