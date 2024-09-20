<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
</head>
<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<body>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debut", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>
	<%
		String artist = "아이유";
	%>
	<div id="wrap" class="container">
		<header>
			<div class="d-flex">
				<!-- 로고 영역 -->
				<div class="logo">
					<a class="logoText text-success" href="/lesson02/quiz10.jsp">Melong</a>
				</div>
				
				<!-- 검색 영역 -->
				<div class="mb-3 col-4">
					<form method="get" action="/lesson02/quiz10.jsp">
						<div class="input-group">
						  <input type="text" class="form-control" name="search">
						  
						  <div class="input-group-append">
						    <button class="btn btn-success" type="submit" id="button-addon2">검색</button>
						  </div>
						</div>
					</form>
				</div>
			</div>
		</header>
		
		<!-- nav 영역 -->
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="" class="nav-link">앨범차트</a></li>
				<li class="nav-item"><a href="" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href="" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href="" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href="" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
			
		<!-- 섹션 영역 -->
		<section>
		<%  // section 부분 분기
			String musicId = request.getParameter("musicId");
			String search = request.getParameter("search");
			if (musicId == null && search == null) {
		%>
			
			<!-- 가수 정보 출력 -->
			<section class="infoArea d-flex">
				<div>
					<img class="artistImg" src="<%= artistInfo.get("photo") %>" alt="<%= artistInfo.get("name") %> 사진">
				</div>
				<div class="infoText">
					<h4><b><%= artistInfo.get("name") %></b></h4>
					<div><%= artistInfo.get("agency") %></div>
					<div><%= artistInfo.get("debut") %></div>
				</div>
			</section>
			
			<!-- 노래 목록 출력 -->
			<article class="mt-3">
				<h2>곡 목록</h2>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					
					<tbody>
				<%
					for (Map<String, Object> music : musicList) {
						
				%>
						<tr>
							<td><%= music.get("id") %></td>
							<td><a href="/lesson02/quiz10.jsp?musicId=<%= music.get("id") %>"><%= music.get("title") %></a></td>
							<td><%= music.get("album") %></td>
						</tr>
				<%
					}
				%>
					</tbody>
				
				
				</table>
			</article>
		<%	
			} else { // 곡 정보와 가사 출력
				boolean isMusicFound = false;
				for (Map<String, Object> music : musicList) {
					if ((music.get("id") + "").equals(musicId) || music.get("title").equals(search)) {
						isMusicFound = true;
						String time = ((Integer)music.get("time") / 60) + " : " + ((Integer)music.get("time") % 60);
		%>
			<!-- 곡 정보 출력 -->
			<section class="infoArea d-flex">
				<div>
					<img class="thumbnail" src="<%= music.get("thumbnail") %>" alt="<%= music.get("title") %> 썸네일">
				</div>
				
				<div class="infoText">
					<h1><%= music.get("title") %></h1>
					
					<div class="text-success mb-4">
						<b><%= music.get("singer") %></b>
					</div>
					
					<div class="d-flex musicInfo">
						<div class="mr-4">
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						
						<div>
							<div><%= (String)music.get("album") %></div>
							<div><%= time %></div>
							<div><%= (String)music.get("composer") %></div>
							<div><%= (String)music.get("lyricist") %></div>
						</div>
					</div>
				</div>
			</section>
			<!-- 가사 정보 출력(데이터 없음) -->
			<article class="mt-3">
				<h2>가사</h2>
				<hr>
				<b>가사 정보 없음</b>
			
			</article>
			<%
						break;
					} // if문 끝
				} // for문 끝
				
				
				if (isMusicFound == false) { // 검색 결과가 없을 경우
			%>
			<article>
				<div class="mt-3">
					<h2>검색 결과가 없습니다.</h2>
				</div>
			</article>
		<%			
				}
			} 
		%>
				
				
		</section>
		
		<!-- footer 영역 -->
		<footer>
			<div class="mt-5">
				<hr>
				<div>Copyright 2021. melong All Rights Reserved.</div>
			</div>
		</footer>
	</div>
	
</body>
<style>
	#wrap {
		min-width:700px;
		margin-top: 15px;
	}
	
	.logo {
		height:38px;
	}
	
	.logo .logoText {
		font-size:25px;
		font-weight:bold;
		text-decoration:none;
	}
	.logo .logoText:hover {
		color:#28a745 !important;
	}
	
	.nav-link {
		color:#000;
		font-weight:bold;
	}
	
	.nav-link:hover {
		color:#000;
	}
	section > .infoArea {
		padding:15px;
	    min-height:120px;
	    border: 1px solid #28a745;
	}
	.infoArea .infoText {
	    margin-left:20px;
	}
	.infoArea .artistImg {
		width:170px;
	}
	article .table {
		font-weight:500;
	}
	.infoArea .thumbnail {
		width:200px;
	}
	.infoText .musicInfo {
		font-size:14px;
		color:#666;
	}
</style>	
</html>