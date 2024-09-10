<!-- setContentType("text/html")에 해당 -->
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>JSP</h1>
	
	<!-- HTML 주석: 네트워크 response에서 보임. -->
	<%-- jsp 주석: response에서 안 보임. --%>
	
	<%
		// 자바 문법 시작
		// scriptlet
		
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<b>합계:</b>	
	<input type="text" value="<%=sum%>"> <%-- HTML 태그 중간에 변수 끼워넣기 --%>
	
	<hr>
	
	<%!
		// 선언문 - 클래스 같은 느낌. 앞으로 쓸 일 없을 것이다
		
		// 필드
		int num = 100;
		// 메소드
		public String getHelloWorld() {
			return "Hello World!";
		}
	%>
	
	<%= num + 200 %>
	<br>
	<%= getHelloWorld() %>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		// import하려면 빨간줄 뜨는 곳에 커서 두고 ctrl +space 해서 선택
		// 혹은 <%@page import="java.util.*" 로 import하면 전체선택임.
	%>
</body>
</html>