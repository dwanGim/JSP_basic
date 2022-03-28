<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	아래에 폼을 만들어주세요.
	목적지는 
 --%>
<form action="http://localhost:8181/20220322/jspobject/request/req_photo_result.jsp">
	<table class="table table-striped table-primary">
 		<thead>
   		<tr>
     		<th>사진 설명 </th>
     		<th>선 택</th>
   		</tr>
   		</thead>
   		<tbody>
   		<tr>
     		<td>루트비히 폰 비트겐슈타인의 사진</td>
     		<td>
				<input type="radio" name="photo" value="1">보기&nbsp;
			</td>
   		</tr>
   		<tr>
   			<td>버트란드 러셀의 사진 </td>
   			<td>
   				<input type="radio" name="photo" value="2">보기&nbsp;
   			</td>
   		
   		</tr>	
   		</tbody>

 		</table>
 	
 		<input type="submit" class="btn btn-primary" value="제출">
 	</form>

</body>
</html>