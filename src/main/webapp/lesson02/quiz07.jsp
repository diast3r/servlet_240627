<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
</head>
<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<body>
	<div class="container">
		<!-- db에 작성하는 게 아니기 때문에 조회하는 것이기 때문에 get메소드를 사용해도 상관없음. -->
		<h1>메뉴 검색</h1>
			<form method="get" action="/lesson02/quiz07_1.jsp">
				<div class="d-flex align-items-center">
					<input type="text" name="menu" class="form-control col-3 mr-3">
					<label class="m-0">
						<input type="checkbox" name="overPoint4" value="true">
						<span class="ml-1">4점 이하 제외</span>
					</label>
				</div>
			<input type="submit" value="검색" class="btn btn-success mt-3">
		</form>
	</div>
	
</body>
</html>