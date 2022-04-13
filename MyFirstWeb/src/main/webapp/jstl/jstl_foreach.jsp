<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	// 1~100까지 더해서 결과값을
	// 1부터 100까지 총합은 ? 입니다. 라고 브라우저에 출력되는 반복문
	int total = 0;
	for(int i=1; i<=100; i++) {
		total += i;
	}
	System.out.println(total);
	
	
--%>

<!-- begin='시작값', end='끝값(포함)', step='숫자증가량', var='변수명' 
		c: forEach구문은 for문을 대체합니다.-->
	<c:forEach begin="1" end="100" step="1" var="number">
		<c:set var="total" value="${total + number}" /><!-- total = total + number; -->
	</c:forEach>
	<h1>1~100까지의 총합 : ${total}</h1>
	<!-- forEach를 이용한 구구단 4단 출력 -->
	<c:forEach begin="1" end="9" var="count">
		<c:out value="4 * ${count} = ${4*count}" /><br/>
	</c:forEach>
	<hr/>
	<c:forEach begin="2" end="9" var="dan">
		<c:out value="${dan} 단을 출력합니다."/><br/>
		<c:forEach begin="1" end="9" var="gugu">
			<c:out value="${dan} * ${gugu} = ${dan*gugu}"/><br/>
		</c:forEach>
		<hr/>
	</c:forEach>
	<hr/>
	
	<h1>숫자가 아닌 요소를 반복하는 JSTL</h1>
	<%-- arr변수 내에 과일 5개의 이름을 배열로 저장하는 구문 --%>
	<c:set var="arr" value='<%=new String[] {"사과", "딸기", "망고", "바나나", "포도"} %>'/>
	<%-- 변수 arr내부 자료 ["사과", "딸기", "망고", "바나나",	"포도"]를 순차적으로 출력해보겠습니다.--%>
	<c:forEach var="i" items="${arr}">
		<c:out value="${i }"/><br/>
	</c:forEach>
	<%	// 위의 forEach문과 같은 기능을 가진 향상된 for문입니다.
		//String[] arr ={"사과", "딸기", "망고", "바나나", "포도"};
		//for(String i : arr) {
		//	out.println(i + "<br/>");
		//}
	%>
	<hr/>
	<!-- int배열에 10, 20, 30, 40, 50을 넣고
	c:forEach문을 이용해 화면에 출력해보겠습니다. -->
	<c:set var="hi" value='<%=new int[] {10, 20, 30, 40, 50} %>'/>
	<c:forEach var="i" items="${hi}">
		<c:out value="${i }"/><br/>
	</c:forEach>	


	
</body>
</html>