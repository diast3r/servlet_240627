<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	jsp 파일
	<%
	out.println("<html><head><title>배운 것들</title></head><body>");
	// 로그인 섹션
	out.println("<h3>marondal.com 로그인</h3>");
	out.println("<div>");
	out.println("<form method=\"post\" action=\"http://marondal.com/sign/process\" target=\"_blank\">");
	out.println("아이디<input name=\"username\" placeholder=\"아이디\" type=\"text\"><br>");
	out.println("비밀번호<input name=\"password\" placeholder=\"비밀번호\" type=\"password\"><br>");
	out.println("<button type=\"submit\">로그인</button>");
	out.println("<a href=\"http://marondal.com/sign/forget_password\">Forgot Password?</a>");
	out.println("</form>");
	out.println("</div>");
	
	// 강의 섹션
	out.println("<div style=\"display:flex\">");
	
	/* lesson01 */
	out.println("<div>");
	out.println("<ul>");
	out.println("<h1><a href=\"http://marondal.com/lesson/example_list?lessonId=10261&lectureId=10007&lectureListId=10084\">lesson01</a></h1>");
       out.println("<h5><a href=\"/lesson01\">디렉토리</a></h5>");
       
	// lesson01-Day01
	out.println("<h2>Day01</h2>");
	out.println("<li><a href=\"/lesson01/lectureMemo/Day01.txt\" target=\"_blank\">Memo</a></li>");
	out.println("<li><a href=\"/lesson01/lectureMemo/img/사이트에 연결할 수 없음.png\" target=\"_blank\">화면 캡처</a></li>");
	out.println("<li><a href=\"/lesson01/lectureMemo/img/문과형 학생의 후기.jpg\" target=\"_blank\">문과형 학생의 후기</a></li>");
	out.println("<li><a href=\"/hello\">Hello world!</a></li>");
	
	// lesson01-Day02
	out.println("<h2>Day02</h2>");
	out.println("<li><a href=\"/lesson01/ex01\">/lesson01/ex01</a></li>");
	out.println("<ul>");
	out.println("<li><a href=\"/lesson01/quiz01\">/lesson01/quiz01</a></li>");
	out.println("<li><a href=\"/lesson01/quiz02\">/lesson01/quiz02</a></li>");
	out.println("</ul>");
	
	out.println("<li><a href=\"/lesson01/ex02\">/lesson01/ex02</a></li>");
	out.println("<ul>");
	out.println("<li><a href=\"/lesson01/quiz03\">/lesson01/quiz03</a></li>");
	out.println("<li><a href=\"/lesson01/quiz04\">/lesson01/quiz04</a></li>");
	out.println("</ul>");
	
	// lesson01-Day03
	out.println("<h2>Day03</h2>");
	out.println("<li><a href=\"/lesson01/lectureMemo/Day03.txt\" target=\"_blank\">Memo</a></li>");
	out.println("<li><a href=\"/lesson01/ex03.html\">/lesson01/ex03.html</a></li>");
	out.println("<ul>");
	out.println("<li><a href=\"/lesson01/quiz05.html\">/lesson01/quiz05.html</a></li>");
	out.println("<li><a href=\"/lesson01/quiz06.html\">/lesson01/quiz06.html</a></li>");
	out.println("</ul>");
	
	// lesson01-Day04
	out.println("<h2>Day04</h2>");
	out.println("<li><a href=\"/lesson01/lectureMemo/Day04.txt\" target=\"_blank\">Memo</a></li>");
	out.println("<li><a href=\"/lesson01/ex04.html\">/lesson01/ex04.html</a></li>");
	out.println("<ul>");
	out.println("<li><a href=\"/lesson01/quiz07.html\">/lesson01/quiz07.html</a></li>");
	out.println("</ul>");
	out.println("<li><a href=\"/lesson01/ex05.html\">/lesson01/ex05.html</a></li>");
	
	// lesson01-Day06
	out.println("<h2>Day06</h2>");
	out.println("<li><a href=\"/lesson01/quiz08.html\">/lesson01/quiz08.html</a></li>");
	out.println("<li><a href=\"/lesson01/quiz09.html\">/lesson01/quiz09.html</a></li>");
	out.println("<li><a href=\"/lesson01/quiz10.html\">/lesson01/quiz10.html</a></li>");
	
	out.println("<ul>");
	out.println("</div>");
	
	/* 형상관리(Github) */
	out.println("<div>");
	out.println("<ul>");
	out.println("<h1><a href=\"http://marondal.com/lesson/material?lessonId=10261&lectureId=10007&lectureListId=10083\">형상관리</a></h1>");
	
	// 형상관리-Day05
	out.println("<h2>Day05</h2>");
	out.println("<li><a href=\"/lesson02/lectureMemo/img/Git 흐름.jpg\" target=\"_blank\">Git 흐름</a></li>");
	out.println("<li><a href=\"/lesson01/lectureMemo/Github.txt\" target=\"_blank\">Github.txt</a></li>");
	out.println("<li><a href=\"/lesson01/lectureMemo/형상관리 주의점.txt\" target=\"_blank\">형상관리 주의점.txt</a></li>");
	
	// 형상관리-Day06
	out.println("<h2>Day06</h2>");
	out.println("<li><a href=\"/lesson01/lectureMemo/Github2.txt\" target=\"_blank\">Github2.txt</a></li>");
	out.println("<li><a href=\"/lesson01/lectureMemo/형상관리 주의점2.txt\" target=\"_blank\">형상관리 주의점2.txt</a></li>");
	
	out.println("</ul>");
	out.println("</div>");
	
	/* lesson02 */
	out.println("<div>");
	out.println("<ul>");
	out.println("<h1><a href=\"http://marondal.com/lesson/example_list?lessonId=10261&lectureId=10007&lectureListId=10093\">lesson02</a></h1>");
       out.println("<h5><a href=\"/lesson02\">디렉토리</a></h5>");
       
	// lesson02-Day06
	out.println("<h2>Day06</h2>");
	out.println("<li><a href=\"/lesson02/ex01.jsp\" target=\"_blank\">ex01.jsp</a></li>");
	out.println("<ul>");
	out.println("<li><a href=\"/lesson02/quiz01.jsp\" target=\"_blank\">quiz01.jsp</a></li>");
	out.println("</ul>");
	
	// lesson02-Day07
	out.println("<h2>Day07</h2>");
	out.println("<li><a href=\"/lesson02/lectureMemo/서버 오류번호.txt\" target=\"_blank\">Memo</a></li>");
	out.println("<li><a href=\"/lesson02/ex02.jsp\" target=\"_blank\">ex02.jsp</a></li>");
	out.println("<ul>");
	out.println("<li><a href=\"/lesson02/quiz02.jsp\" target=\"_blank\">quiz02.jsp</a></li>");
	out.println("<li><a href=\"/lesson02/quiz03.jsp\" target=\"_blank\">quiz03.jsp</a></li>");
	out.println("</ul>");
	
	
	// lesson02-Day08
	out.println("<h2>Day08(예정)</h2>");
	out.println("<li><a href=\"/lesson02/ex03.jsp\" target=\"_blank\">ex03.jsp</a></li>");
	out.println("<ul>");
	out.println("</ul>");
	
	
	out.println("</ul>");
	out.println("</div>");
	%>
</body>
</html>