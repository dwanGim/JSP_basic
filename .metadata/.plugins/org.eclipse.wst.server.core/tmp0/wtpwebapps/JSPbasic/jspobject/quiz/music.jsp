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
<form action="http://localhost:8181/JSPbasic/jspobject/quiz/music.result.jsp" method="post">
	<table class="table table-striped table-primary">
 		<thead>
   		<tr>
     		<th>곡 명 </th>
     		<th>연 주</th>
     		<th>playlist</th>
   		</tr>
   		</thead>
   		<tbody>
   		<tr>
     		<td>드보르작 신세계로부터 1악장</td>
     		<td>베를린 필하모닉 오케스트라/ 카라얀</td>
     		<td><input type="radio" name="playlist" value="list1">듣기&nbsp; </td>
   		</tr>
   		<tr>
   			<td>드보르작 신세계로부터 2악장 </td>
   			<td>베를린 필하모닉 오케스트라/ 카라얀</td>
   			<td><input type="radio" name="playlist" value="list2">듣기&nbsp;</td>
   		</tr>
   		<tr>
   			<td>드보르작 신세계로부터 3악장 </td>
   			<td>베를린 필하모닉 오케스트라/카라얀</td>
   			<td><input type="radio" name="playlist" value="list3">듣기&nbsp;</td>
   		</tr>
   		</tbody>

 		</table>
 		<input type="submit" value="들으러 가기">
	</form>
</body>
</html>