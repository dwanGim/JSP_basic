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
<%-- 현재 파일인 req_user_form.jsp에 폼 태그를 만들어보겠습니다.
	목적지는 함께 req_user.jsp 파일입니다. post 방식으로 데이터를 전달합니다.
	먼저 이름, 아이디, 비밀번호를 입력해 보낼 수 있는 input 태그를 만들어주세요.
	각 태그의 name 속성은은 uname, uid, upw 입니다.
	데이터를 받아주는 req_user.jsp에서 한글이 꺠지지 않도록 받아서 화면에 출력해보세요.
--%>
	
	<form action="http://localhost:8181/20220322/jspobject/request/req_user.jsp" method="post">
		id : <input type="text" name="uid" placeholder="아이디"><br/>
		pw : <input type="text" name="upw" placeholder="패스워드"><br/>
		name : <input type="text" name="uname" placeholder="이름"><br/>
		
		<hr/>
		
		취미 : 
		<%-- input 태그 내부에 value값을 이용해 선택되었을 때 전달될 데이터를 정할 수 있습니다. --%>
		<input type="checkbox" name="hobby" value="축구">축구&nbsp;
		<input type="checkbox" name="hobby" value="게임">게임&nbsp;
		<input type="checkbox" name="hobby" value="코딩">코딩&nbsp;
		<input type="checkbox" name="hobby" value="명상">명상&nbsp;
		<input type="checkbox" name="hobby" value="잠자기">잠자기&nbsp;
		<br/>
		
		혈액형 :
		<input type="radio" name="blood" value="A">A형 &nbsp;
		<input type="radio" name="blood" value="B">B형 &nbsp;
		<input type="radio" name="blood" value="O">O형 &nbsp;
		<input type="radio" name="blood" value="AB">AB형 &nbsp;
		<br/>
		
		지역 :
		<select name="region">
			<option value="서울">서울</option>
			<option value="경기">경기</option>
			<option value="강원">강원</option>
			<option value="충청">충청</option>
			<option value="전라">전라</option>
			<option value="경상">경상</option>
			<option value="제주">제주</option>
		</select>
		
		<input type="submit" class="btn btn-primary" value="제출">
	</form>

</body>
</html>