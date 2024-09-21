<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<style>
#wrap {margin:0 auto;max-width:1000px;}
.nav {height:70px;}
.nav-link {color:#fff;}
.bg-orange {background-color:#ff6347;}
.text-orange {color:#ff6347;}
.contents {margin:0 30px;}
</style>
</head>
<body>
	<div id="wrap">
		<%-- header 영역 --%>
		<header class="bg-orange">
			<div class="logo p-4 text-center text-white">
				<h1>HONG당무 마켓</h1>
			</div>
			<nav class="d-flex justify-content-center align-items-center">
				<ul class="nav nav-fill w-100 font-weight-bold">
					<li class="nav-item d-flex justify-content-center align-items-center"><a href="/lesson03/quiz03.jsp" class="nav-link">리스트</a></li>
					<li class="nav-item d-flex justify-content-center align-items-center"><a href="/lesson03/quiz03_1.jsp" class="nav-link">물건 올리기</a></li>
					<li class="nav-item d-flex justify-content-center align-items-center"><a href="#" class="nav-link">마이 페이지</a></li>
				</ul>
			</nav>
		</header>
		
		<%-- section 영역 --%>
		<section class="contents mt-3">
			<div class="container">
				<div class="display-4 my-4">물건 올리기</div>
				<form method="post" action="/lesson03/upload">
					<%-- 아이디, 제목, 가격 --%>
					<div class="d-flex justify-content-between">
						<%-- 아이디 --%>
						<select name="sellerId" class="form-control col-3">
							<option value="">-아이디 선택-</option>
						<%
							MysqlService ms = MysqlService.getInstance();
							ms.connect();
							String selectQuery = "select id, nickname from seller";
							ResultSet res = ms.select(selectQuery);
							while (res.next()) {
						%>
							<option value="<%= res.getInt("id") %>"><%= res.getString("nickname") %></option>
						<%
							}
						%>
						</select>
						
						<%-- 제목 --%>
						<input type="text" placeholder="제목" class="form-control col-5" name="title">
						
						<%-- 가격 --%>
						<div class="input-group col-3">
						  <input type="text" class="form-control" placeholder="가격" name="price">
						  <div class="input-group-append">
						    <span class="input-group-text">원</span>
						  </div>
						</div>
					</div>
					
					<%-- 본문 내용 --%>
					<textArea class="form-control mt-2" rows="10" name="description"></textArea>
					
					<%-- 이미지 url --%>
					<div class="input-group mt-2">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">이미지 url</span>
					  </div>
					  <input type="text" class="form-control" name="pictureUrl">
					</div>
					<button class="form-control btn bg-orange mt-2" disabled>저장</button>
				</form>
			</div>
		<%
			ms.disconnect();
		%>
		</section>
		 
		<%-- footer 영역 --%>
		<footer>
		</footer>
	</div>
	
	<script>
	$(document).ready(function() {
		$("form").on("input", function() {
			var sellerId = $("select[name='sellerId']").val();
			var title = $("input[name='title']").val();
			var price = $("input[name='price']").val();
			var description = $("textArea[name='description']").val();
			if (sellerId == "") {
				$("form button").prop("disabled", true);
				return;
			}
			if (title == "") {
				$("form button").prop("disabled", true);
				return;
			}
			if (price == "" || !Number.isInteger(+price)) {
				$("form button").prop("disabled", true);
				return;
			}
			if (description == "") {
				$("form button").prop("disabled", true);
				return;
			}
			
			$("form button").prop("disabled", false);
			
		});
	});
	</script>
</body>
</html>