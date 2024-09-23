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
<style>
#wrap {margin:0 auto;width:1000px;}
.nav {height:70px;}
.nav-link {color:#fff;}
.bg-orange {background-color:#ff6347;}
.text-orange {color:#ff6347;}
.contents {display:flex;flex-wrap:wrap;gap:17px;}
.contents article {border:3px solid #ff6347;}
.contents article .img {width:300px;height:200px;overflow:hidden;}
.contents article:hover {background-color:#eee;}

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
		<%
			MysqlService ms = MysqlService.getInstance();
			ms.connect();
			String selectQuery = "select U.id, S.nickname as nickname, U.title as title, U.price as price, U.pictureUrl as pictureUrl from used_goods as U join seller as S on U.sellerId = S.id order by U.id desc";
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
		%>
			<%-- 게시글 영역 --%>
			<article class="p-2">
				<div class="img d-flex justify-content-center align-items-center">
				<%
					if (res.getString("pictureUrl") != null) {
				%>
					<img src="<%= res.getString("pictureUrl") %>" alt="물건 사진">
				<%
					} else {
				%>
					<div class="text-secondary">이미지 없음</div>
				<%
					}
				%>
				</div>
				<div class="font-weight-bold"><%= res.getString("title") %></div>
				<div class="text-secondary"><small><%= res.getInt("price") %>원</small></div>
				<div class="text-orange"><%= res.getString("nickname") %></div>
			</article>
		<%
			}
			ms.disconnect();
		%>
		</section>
		 
		<%-- footer 영역 --%>
		<footer>
		</footer>
	</div>
</body>
</html>