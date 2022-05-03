<%@page import="kr.co.ict.GetBoardList"%>
<%@page import="kr.co.ict.domain.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.ict.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 포워딩으로 먼저 넘어온 다음 리다이렉트를 이어서 실행해야
포워딩/리다이렉트 호출이 겹쳐서 에러가 나는 걸 막을 수 있습니다.
이 경우만 예외적으로 스크립트릿을 이용한 리다이렉트를 사용합니다. -->
세션값 : ${sessionScope.s_id }<br/>
<c:if test="${sessionScope.s_id eq null}">
	<% // response.sendRedirect("http://localhost:8181/MyFirstWeb/"); %>
	<!--  <script>location.href="http://localhost:8181/MyFirstWeb/"</script>-->
</c:if>
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
					<th>글 번 호</th>
					<th>제 목</th>
					<th>글 쓴 이</th>
					<th>작성시간</th>
					<th>수정시간</th>
					<th>조 회 수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardList}">
					<tr>
						<td>${board.boardNum}</td>
						<td><a href="http://localhost:8181/MyFirstWeb/boardDetail.do?board_num=${board.boardNum}">${board.title}</a></td>
						<td>${board.writer}</td>
						<td>${board.bDate}</td>
						<td>${board.mDate}</td>
						<td>${board.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${sessionScope.s_id != null }">
			<a href="http://localhost:8181/MyFirstWeb/boardInsertForm.do" class="btn btn-primary btn-mb-1">글쓰기</a><br/><br/>
		</c:if>
		<a href="http://localhost:8181/MyFirstWeb/" class="btn btn-primary btn-mb-1">홈으로</a>
	</div>
</div>
</body>
</html>