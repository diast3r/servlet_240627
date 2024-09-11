<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		// request, response 객체 미리 정의돼있어서 바로 호출해도 됨.
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age"); // Integer로의 형변환은 생략했음.
	%>
	<b>아이디</b>
	<%= id %><br>
	<b>이름</b>
	<%= name %><br>
	<b>나이</b>
	<%= age %><br>
	
	
</body>
</html>