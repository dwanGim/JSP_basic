<%@page import="com.ict.domain.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
	String userId = request.getParameter("userId");
	// DAO 생성(MySQL을 쓴다고 지정)
	UserDAO dao = new UserDAO();
	// DAO 내부 메서드인 getUserInfo(유저명) 호출
	UserVO user = dao.getUserInfo(userId);
	
	
	

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 4. body 내부에 XX 유저의 정보입니다 라는 문장과 함께 전체 정보가 나오도록 코드를 짜주세요.
		
		// 5. 폼에서 전달한 아이디를 처리할 수 있도록 getUserInfoForm.jsp를 추가해주세요.
	%>
<div class="container">
	<row>
		<div class="col-sm-8 offset-md-2">
			<p>	
						<strong>DAO에서 전달받은 자료들 :</strong>		
			</p>
			<p>
				아이디 : <%=user.getUserId() %><br/>
				패스워드 : <%=user.getUserPw() %><br/>
				이름 : <%=user.getUserName() %><br/>
				이메일 : <%=user.getEmail() %><br/>
			</p>
			<br/>
			<hr/>
			<p>
						진입점 : http://localhost:8181/JSPbasic/user/getUserInfo.jsp?userId=seramat_pagi<br/><br/>
						1. getUserInfo.jsp의 11번 라인의 우변에서 userId값 저장(userId=seramat_pagi)<br/><br/>
						2. 12번 라인 우변 생성 UserDAO()생성자 실행.<br/><br/>
							UserDAO.java의 21~27번 실행(사용 DB정보 세팅)<br/><br/>
						3. getUserInfo.jsp의 12번 라인으로 복귀 후 우변 정보 좌변에 대입<br/><br/>
						4. getUserInfo.jsp의 16번 라인의 우변 .getUserInfo("seramat_pagi")를 실행<br/><br/>
							UserDAO.java의 97번 ~132번 라인까지 실행 seramat_pagi유저 정보 리턴<br/><br/>
						5. getUserInfo.jsp의 16번 복귀 후 우변의 seramat_pagi 유저 정보 좌변에 대입<br/><br/>
						6. getUserInfo.jsp의 17번 라인에서 자료를 화면에 출력<br/><br/>
						결과 : 조회한 회원 정보가 브라우저상에 출력됨.<br/><br/>
			</p>	
		</div>
	</row>
</div>
	<p>

	
</body>

<%
/*
	// 1. userId 라는 이름으로 전달되는 데이터를 받으면(request.get?????)
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("userId");
	// 스크립트릿 내부에 전체 회원정보를 가져오도록 코드를 작성해서
	// ResultSet 변수에 저장까지만 해 주세요.
	String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	// try블럭이 닫히는 순간, 내부에서 최초로 선언된 변수들도 다 사라짐
	// 그래서 body태그에 출력해야하는 필수요소는 try 진입 전 선언해놔야함
	ResultSet rs = null;
	// 2. DB연동 후
	try {
		Class.forName(dbType);
*/

%>
</html>
