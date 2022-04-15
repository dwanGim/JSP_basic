<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%--스크립트릿을 이용해
el_obj.jsp의 폼에서 날려준 데이터를 받아
body태그 내에 표현식을 <%= %>을 이용해 먼저 표현해보겠습니다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%// String name = request.getParameter("name"); %>
	<%// String nick = request.getParameter("nick"); %>
<row>
	<div class="container">
		<div class="col-sm-8">
			<%--  <p>이름 : <%=name %></p>
			<p>별명 : <%=nick %></p> --%>
			<hr/>
			<%-- request.getParameter("이름 ");으로 받아오던 데이터를
			el 내부에서는 ${request.이름}으로 쉽게 가져올 수 있습니다.--%>
			<p>${param.name }</p>
			<p>${param.nick }</p>
			<hr/>
			<p>${requestScope}</p>
		</div>
	</div>
</row>	
	

</body>
</html>